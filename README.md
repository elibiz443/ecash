# ![eCASH logo](app/assets/images/logo.png)

## Project Brief

A client wants to build a web platform that can enable users to register and send money to each other within the system. They top up their accounts through MPESA* and can now transfer amongst themselves. They use the registered number or email address to transfer. Once a transfer is done, the recipient receives a confirmation through email. 

At the end of the day** a report of all transactions is sent to all users of the system who have had transactions. The users will use the application mostly on their phones so it should work well on a mobile browser.

## For demo purposes top up should be through a section where you enter number and amount

## For demo purposes, you should commit every 2 hours.

# Getting Started

Clone the project into your computer directory with:

	git clone https://github.com/elibiz443/ecash.git

cd into project directory, i.e

	cd ecash

Migrate the Database using:

	rails db:create && rails db:migrate

Run the rails server using:

	rails s   (Afterwards, go to the link 'localhost:3000' in your favourite browser to access the page/app.)

If you find this error 'Webpacker::Manifest::MissingEntryError...' Then run the line below in terminal

	bundle exec rake webpacker:install

Deploying to Heroku:

	heroku login -i (Provide your heroku email and password)
	heroku create myapp (Here my app represents the name you choose to give you app, e.g myecash)
	git push heroku master
	heroku run rake db:prepare

Linking to a domain (From namecheap):

	heroku domains:add www.example.com
	heroku domains:add example.com

	heroku domains

	Expected Output:
		=== myecash Custom Domains
		Domain Name       DNS Record Type DNS Target                                               SNI Endpoint 
		rorthemes.com     ALIAS or ANAME  fitted-shrimp-l7vwxw7xcx8jvzbrl5opg4ag.herokudns.com     undefined    
		www.rorthemes.com CNAME           elliptical-python-s9g1inv95pxo15drrwp0r0ux.herokudns.com undefined

Go to namecheap, under domain name, click manage then click advanced DNS just below the domain name.

	already provided, Type: CNAME Record Host: www Value: elliptical-python-s9g1inv95pxo15drrwp0r0ux.herokudns.com

	Click ADD NEW RECORD. Type: ALIAS Record Record Host: @ Value: fitted-shrimp-l7vwxw7xcx8jvzbrl5opg4ag.herokudns.com

Replace the (value) in the above sample with your own generated values.

Go to your domain, i.e example.com.

	voilà 
