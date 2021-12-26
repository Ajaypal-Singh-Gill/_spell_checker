#include <iostream>
#include <fstream>
#include <string.h>
using namespace std;

#define dictionary "/Users/ajaypalgill/Desktop/_spellchecker/dictionary_large"

long long int totalWordsInDict = 0;

bool Trie ::buildTrie()
{

    char c;
    ifstream fin;
	  fin.open(dictionary);

    try
    {
        if (!fin)
        {
          throw "Something went wrong while processing file";
        }
    }

    catch (char *err)
    {

        cout << err;
        cout << totalWordsInDict;
        return false;
        fin.close();
    }

    Trie *temp = root;

    fin >> noskipws;

    while (fin >> c)
    {

        if (temp == NULL)
        {
            Trie *node = new Trie;
            root = node;
            temp = root;
        }

        if (isalpha(c))
        {

            if (temp->childAplhabets[c - 'a'] == NULL)
            {

                Trie *node = new Trie;
                temp->childAplhabets[c - 'a'] = node;
                temp = node;
            }

            else
                temp = temp->childAplhabets[c - 'a'];
        }
        else if (c == '\'')
        {

            if (temp->childAplhabets[maxNoOfChildAlphabets - 1] == NULL)
            {

                Trie *node = new Trie;
                temp->childAplhabets[maxNoOfChildAlphabets - 1] = node;
                temp = node;
            }

            else
                temp = temp->childAplhabets[maxNoOfChildAlphabets - 1];
        }

        if (c == '\n')
        {

            temp->isEndOfWord = true;
            temp = root;
            totalWordsInDict++;
            continue;
        }
    }

    fin.close();
    return true;
}

bool Trie ::isCorrectWord(char *word)
{
    char c;
    int l = strlen(word);
    Trie *temp = root;

    for (int i = 0; i < l; i++)
    {
        c = word[i];

        if (isalpha(c))
        {
            temp = temp->childAplhabets[c - 'a'];
        }

        else if (c == '\'')
        {
            temp = temp->childAplhabets[maxNoOfChildAlphabets - 1];
        }

        if (temp == NULL)
            return false;
    }

    if (temp->isEndOfWord == false)
        return false;

    return true;
}

bool Trie::deleteTrie(void)
{
    if (root != NULL)
    {
        deleteNode(root);
        return true;
    }
    return false;
}

void Trie ::deleteNode(Trie *t)
{
    for (int i = 0; i < maxNoOfChildAlphabets; i++)
    {
        if (t->childAplhabets[i] != NULL)
        {
            deleteNode(t->childAplhabets[i]);
        }
    }

    delete (t);
}
