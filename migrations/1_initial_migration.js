const EncodeToken = artifacts.require("EncodeToken");
const EncodeNFT = artifacts.require("EncodeNFT");

module.exports = async function (deployer) {
  var name = 'Encode';
  var symbol = 'ENC';
  var url = 'https://drive.google.com/file/d/1B1TU6jMgxq8qV9E1PqtUW-UTdJZsZqDZ/view?usp=sharing';
  const result = await deployer.deploy(EncodeToken,name,symbol).then(() => console.log(EncodeToken.address))

  // Option 3) Retrieve the contract instance and get the address from that:
  .then(() => EncodeToken.deployed())
  .then(async _instance => {
    console.log(_instance.address)
    await deployer.deploy(EncodeNFT,_instance.address,1693540800000,url).then(() => console.log("final",EncodeNFT.address))
  });

};
