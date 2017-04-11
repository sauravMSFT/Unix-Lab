BEGIN {n=0}
{
    for(i=1;i<=NF;i++)
    arr[i]=arr[i]" "$i;
    n=NF;
}
END{
    {
        for(i=1;i<=NF;i++)
        {
            print arr[i]
        }
    }
}