// an code to read and find files using js

const fs = require('fs');

fs.readdir('.', (err, files) => {
    if (err) {
        console.log("Got error:", err);
        return;
    }

    let matchedFiles = files.filter(file => file.includes("Urbanist"));
    matchedFiles.forEach(file =>
        console.log(
            `- asset: 'assets/fonts/${file}'\nweight: 500`
        )
        // console.log(file)
    )
    // matchedFiles.forEach(
    //     file => fs.unlink(`./${file}`, (err) => {
    //         if (err) {
    //             console.log("not deleted", file)
    //         }
    //         else {
    //             console.log("deleted", file)
    //         }
    //     })
    // )
});
