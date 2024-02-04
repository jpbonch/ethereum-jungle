const hre = require("hardhat");

async function main() {
  const jungle = await hre.ethers.deployContract("Jungle");

  await jungle.waitForDeployment();

  console.log(`Deployed to ${jungle.target}`);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
