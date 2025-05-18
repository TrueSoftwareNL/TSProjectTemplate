function main() {
    return new Promise<void>((resolve, reject) => {
        try {
            console.log("Done is 3 seconds...");
            setTimeout(() => {
                console.log("Done!");
                resolve();
            }, 3000);
        } catch (err) {
            reject(err);
        }
    });
}

main();
