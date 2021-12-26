#include <iostream>
#include <string.h>
#include "Trie.h"
#include "TrieImpl.cpp"
#include "crow_all.h"

using namespace std;
using namespace std::chrono;

Trie *trieDict;


bool isCorrect(std::string strtmp ){

  char *word = new char[strtmp.length() + 1];
  strcpy(word, strtmp.c_str());
  auto startTimeOfBuildOperation = chrono::steady_clock::now();

  cout << "******** Building Trie from provided dictionary, Please wait..." <<endl;

  if (!trieDict->buildTrie())
  {
      cout << "Something went wrong while building trie\n";
      return false;
  }

  auto endTimeOfBuildOperation = chrono::steady_clock::now();
  auto timeTakenByBuildOperation = endTimeOfBuildOperation - startTimeOfBuildOperation;
  cout <<"******** Time Taken for building trie dictionary : "<<chrono::duration <double, milli> (timeTakenByBuildOperation).count() << "ms" << endl;
  cout <<"******** Total Words in Dictionary :" << totalWordsInDict << endl;
  int sizeOfWord = strtmp.length();
  bool isCorrect = true;

  if (strlen(word) && !trieDict->isCorrectWord(word))
  {
      isCorrect = false;
  }

  cout << "******** Deleting Trie Dictionary..." <<endl;
  clock_t s = clock();
  auto startTimeOfDeleteOperation = chrono::steady_clock::now();

  if (!trieDict->deleteTrie())
  {
      cout << "Something went wrong in deleting trie\n";
      return 5;
  }

  auto endTimeOfDeleteOperation = chrono::steady_clock::now();
  auto timeTakenByDeleteOperation = endTimeOfDeleteOperation - startTimeOfDeleteOperation;
  cout <<"******** Time Taken for deleting trie dictionary : "<<chrono::duration <double, milli> (timeTakenByDeleteOperation).count() << "ms" << endl;

  return isCorrect;

}

int main(int argc, char *argv[])
{

    crow::SimpleApp app;

    CROW_ROUTE(app, "/<string>")
    (
      [](std::string word){
        bool correct = isCorrect(word);
        string correctToString = correct ? "true" : "false";
        return "<div><h1>"+ correctToString + "</h1></div>";
      }
    );

    char* port = getenv("PORT");
    uint16_t iport = static_cast<uint16_t>(port != NULL ? stoi(port) : 18080);

    cout<< "PORT = " << iport << "\n";

    app.port(iport).multithreaded().run();

    //To use it directly from command line, Uncomment below line and comment out line 62-78
    // cout << endl << "******** Spell Checker ********"<< endl << endl;
  	// cout << "******** Please enter any word" << endl;
    // char* s1;
    // std::string strtmp;
    // cin >> strtmp;
    //
    // bool check = isCorrect(strtmp);
    //
    // if (check == true){
    //   cout << "******** It is a Valid Word, No Problem" << endl;
    // }else{
    //   cout << "******** Entered Word is incorrect, Please check again... " << endl << endl;
    // }

    return 0;
}
