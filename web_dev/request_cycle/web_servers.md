#Web Servers

1. What are some of the key design philosophies of the Linux operating system?
  * Small is Beautiful
  * Each Program Does One Thing Well
  * Prototype as Soon as Possible
  * Choose Portability Over Efficiency
  * Store Data in Flat Text Files
  * Use Software Leverage
  * Use Shell Scripts to Increase Leverage and Portability
  * Avoid Captive User Interfaces
  * Make Every Program a Filter

2. In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?

A virtual server that appears to the user as a dedicated server but is actually installed on a computer serving multiple Web sites.
  * You are allotted resources that are not shared by everyone. The overall CPU time and memory are shared across all accounts on the machine, but at the same time, portions of those resources are always dedicated to each account. This allows for more power and flexibility than being on a shared account.

3. Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system?
  * much more prone to mistakes or software bugs
  * a vulnerability or malicious software can cause much more harm because you gave it full permissions
  * It's not necessary for most uses (except for administrative work)