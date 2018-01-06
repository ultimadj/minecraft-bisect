const ftpClient = require('ftp-client')
const dateformat = require('dateformat')
const fs = require('fs');

const config = require('../secrets/config.json')
console.log("loaded config", config)
const bisect = require("../secrets/bisect.json")
console.log("loaded secrets", Object.keys(bisect))


const client = new ftpClient({
    host: bisect["ftp.host"],
    port: bisect["ftp.port"],
    user: bisect["ftp.user"],
    password: bisect["ftp.password"]
}, {
    logging: 'basic',
    overwrite: 'older'
});

const backupDate = dateformat(new Date(), 'yyyymmdd_HHMM') 
const backupPath = config["local.backup.path"] + `/${backupDate}/`

fs.mkdirSync(backupPath)

client.connect(() => {
    console.log("Connected", Object.keys(client))
    client.download('.', backupPath, {
        overwrite: 'all'
    }, function (result) {
        console.log(result);
    });
})