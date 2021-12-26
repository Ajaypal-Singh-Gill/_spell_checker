#define maxNoOfChildAlphabets 27

class Trie
{
public:
  Trie *childAplhabets[27];
  bool isEndOfWord;

  Trie(){
        isEndOfWord=false;
  }

  bool buildTrie();
  bool deleteTrie();
  bool isCorrectWord(char *str);
  void deleteNode(Trie* t);
};

Trie *root;
