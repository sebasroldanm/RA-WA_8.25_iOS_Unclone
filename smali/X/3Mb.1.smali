.class public LX/3Mb;
.super LX/3L7;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LX/3L7;-><init>()V

    return-void
.end method

.method public constructor <init>(LX/3Mb;)V
    .locals 0

    invoke-direct {p0, p1}, LX/3L7;-><init>(LX/3L7;)V

    return-void
.end method


# virtual methods
.method public A2w()LX/1TG;
    .locals 1

    new-instance v0, LX/3Mb;

    invoke-direct {v0, p0}, LX/3Mb;-><init>(LX/3Mb;)V

    return-object v0
.end method

.method public A44()Ljava/lang/String;
    .locals 1

    const-string v0, "SHA-384"

    return-object v0
.end method

.method public A51()I
    .locals 1

    const/16 v0, 0x30

    return v0
.end method

.method public AIW(LX/1TG;)V
    .locals 0

    check-cast p1, LX/3Mb;

    invoke-super {p0, p1}, LX/3L7;->A04(LX/3L7;)V

    return-void
.end method

.method public doFinal([BI)I
    .locals 6

    invoke-virtual {p0}, LX/3L7;->A03()V

    iget-wide v2, p0, LX/3L7;->A0A:J

    const/4 v0, 0x3

    shl-long/2addr v2, v0

    iget-wide v4, p0, LX/3L7;->A0B:J

    const/16 v0, -0x80

    invoke-virtual {p0, v0}, LX/3L7;->update(B)V

    :goto_0
    iget v0, p0, LX/3L7;->A01:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LX/3L7;->update(B)V

    goto :goto_0

    :cond_0
    iget v1, p0, LX/3L7;->A00:I

    const/16 v0, 0xe

    if-le v1, v0, :cond_1

    invoke-virtual {p0}, LX/3L7;->A02()V

    :cond_1
    iget-object v1, p0, LX/3L7;->A0D:[J

    aput-wide v4, v1, v0

    const/16 v0, 0xf

    aput-wide v2, v1, v0

    invoke-virtual {p0}, LX/3L7;->A02()V

    iget-wide v0, p0, LX/3L7;->A02:J

    invoke-static {v0, v1, p1, p2}, LX/11i;->A1l(J[BI)V

    iget-wide v1, p0, LX/3L7;->A03:J

    add-int/lit8 v0, p2, 0x8

    invoke-static {v1, v2, p1, v0}, LX/11i;->A1l(J[BI)V

    iget-wide v1, p0, LX/3L7;->A04:J

    add-int/lit8 v0, p2, 0x10

    invoke-static {v1, v2, p1, v0}, LX/11i;->A1l(J[BI)V

    iget-wide v1, p0, LX/3L7;->A05:J

    add-int/lit8 v0, p2, 0x18

    invoke-static {v1, v2, p1, v0}, LX/11i;->A1l(J[BI)V

    iget-wide v1, p0, LX/3L7;->A06:J

    add-int/lit8 v0, p2, 0x20

    invoke-static {v1, v2, p1, v0}, LX/11i;->A1l(J[BI)V

    iget-wide v1, p0, LX/3L7;->A07:J

    add-int/lit8 v0, p2, 0x28

    invoke-static {v1, v2, p1, v0}, LX/11i;->A1l(J[BI)V

    invoke-virtual {p0}, LX/3L7;->reset()V

    const/16 v0, 0x30

    return v0
.end method

.method public reset()V
    .locals 2

    invoke-super {p0}, LX/3L7;->reset()V

    const-wide v0, -0x344462a23efa6128L    # -6.771107636816954E56

    iput-wide v0, p0, LX/3L7;->A02:J

    const-wide v0, 0x629a292a367cd507L    # 9.641589608180943E166

    iput-wide v0, p0, LX/3L7;->A03:J

    const-wide v0, -0x6ea6fea5cf8f22e9L    # -4.222163200156129E-225

    iput-wide v0, p0, LX/3L7;->A04:J

    const-wide v0, 0x152fecd8f70e5939L

    iput-wide v0, p0, LX/3L7;->A05:J

    const-wide v0, 0x67332667ffc00b31L    # 1.3331733573491853E189

    iput-wide v0, p0, LX/3L7;->A06:J

    const-wide v0, -0x714bb57897a7eaefL    # -7.790218494879152E-238

    iput-wide v0, p0, LX/3L7;->A07:J

    const-wide v0, -0x24f3d1f29b067059L    # -3.9066766103558855E130

    iput-wide v0, p0, LX/3L7;->A08:J

    const-wide v0, 0x47b5481dbefa4fa4L    # 2.8288236605994657E37

    iput-wide v0, p0, LX/3L7;->A09:J

    return-void
.end method
