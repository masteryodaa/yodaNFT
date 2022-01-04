async function main() {
    const MyNFT = await ethers.getContractFactory("yodaNFT");
  
    // Start deployment, returning a promise that resolves to a contract object
    const myNFT = await MyNFT.deploy();
    console.log("Contract deployed to address:", myNFT.address);
  }
  
  main()
    .then(() => process.exit(0))
    .catch((error) => {
      console.error(error);
      process.exit(1);
    });

//  0x38d04b53B650A286B2f607E9d338C6cacc7880AB