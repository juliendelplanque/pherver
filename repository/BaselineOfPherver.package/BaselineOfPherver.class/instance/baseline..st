accessing
baseline: spec
      <baseline>

		spec for: #common do: [
			spec
				package: 'Pherver' with: [
					spec
						requires: 'Teapot';
						requires: 'Mustache-Core' ].
			spec project: 'Teapot' with: [ 
				spec
					class: #ConfigurationOfTeapot;
					version: #stable;
					repository: 'http://smalltalkhub.com/mc/zeroflag/Teapot/main' ].
			spec project: 'Mustache-Core' with: [ 
				spec
					class: #ConfigurationOfMustache;
					version: #stable;
					repository: 'http://smalltalkhub.com/mc/NorbertHartl/Mustache/main' ] ].