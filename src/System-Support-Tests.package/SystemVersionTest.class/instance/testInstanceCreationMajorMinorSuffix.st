tests - instance creation
testInstanceCreationMajorMinorSuffix

	| version |
	version := (SystemVersion major: 7 minor: 0 suffix: 'alpha').
	self 
		assert: version type equals: 'Pharo';
		assert: version major equals: 7;
		assert: version minor equals: 0;
		assert: version suffix equals: 'alpha';
		assert: version build equals: SystemVersion invalidBuildNumber;
		assert: version commitHash isEmpty;
		assert: version commitHashShort isEmpty;		
		assert: version date notNil;
		assert: (version printString beginsWith: 'Pharo-7.0+alpha')