# Marcus Tan - Perl Sem 2 Assignment
use strict;
use warnings;
use Cwd;

print "***************************************************************** \n";
print "ST2614 PPC Assignment Two Done by Marcus Tan P1448892 Class 2A/02 \n";
print "***************************************************************** \n";

my $userinput;
my $indicator = 0; #to stop while loop
my $INmessage; #Input Message
my $ENmessage; #Encrypted Message
my $ENFileOutput; #Encryption Output Filename
my $DEmessage; #DEcrypt Message

sub FileSaving () { #Inputting message into file
	open(my $FO, '>', $ENFileOutput);
	print $FO "$ENmessage";
	close $FO;
}

sub MessageEncrypt (){
	my @input_array = split / /, $INmessage;

	foreach $input_array(@input_array){
		my $word_len = length($input_array);
	}

	FileSaving();
}


do{
	print "Indicate Encryption(e) or Decryption (d) : ";
	$userinput=<>;
	chomp($userinput);

	if ($userinput eq 'e' or $userinput eq 'E'){
		$indicator = 1;

		print "Type message you want to encrypt: ";
		$INmessage=<>;
		chomp($INmessage);

		print "Type output filename: (please include the file ext)";
		$ENFileOutput=<>;
		chomp($ENFileOutput);

		MessageEncrypt();
		


	}elsif ($userinput eq 'd' or $userinput eq 'D'){
		$indicator = 1;

		print "Type file you want to decrypt: ";
		$DEmessage=<>;
		chomp($DEmessage);

		print $DEmessage;

	} else {
		print "Please only enter e or d \n"
	}
} while ($indicator != 1);