import { PrismaClient } from "@prisma/client";
const prisma = new PrismaClient({log:["query"]});

async function main() {
  // await prisma.user.deleteMany();
  // const user = await prisma.user.createMany({
  //   data: [
  //     {
  //       name: "Muthuri",
  //       email: "muth@gmail.com",
  //       age: 22,
  //     },
  //     {
  //       name: "Kennedy",
  //       email: "kenn@gmail.com",
  //       age: 25,
  //     },
  //   ],
  //   include:{
  //     userPreference:true
  //   }
  // });
  // console.log(user);
  // const users = await prisma.user.findMany();
  // console.log(users);
  //  const user = await prisma.user.deleteMany();
  //  console.log(user);
  // const user = await prisma.user.findUnique({
  //   // where:{
  //   //   email:"muth@gmail.com"
  //   // };
  //   where:{
  //     age_name:{
  //       age:22,
  //       name:"muthuri"
  //     }
  //   }
  // });
const user = await prisma.user.findFirst({
  where:{
    name:"kennedy"
  }
});

  console.log(user)
}

main()
  .catch((e) => {
    console.error(e.message);
  })
  .finally(async () => {
    await prisma.$disconnect();
  });
