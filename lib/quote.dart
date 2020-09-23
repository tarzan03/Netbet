class Quote {
 String text;
 String author;

 Quote({String text, String author}) { 
   this.text = text;
   this.author = author;
 }
}

//Curly braces under the Quote constructer makes way for the named parmameters.
// Example - Quote myquote = Quote(author: 'Oscar Wilde', text: ' hello to you.')