.class public LX/2Gx;
.super LX/26Y;
.source ""


# direct methods
.method public constructor <init>(LX/1Q8;J)V
    .locals 1

    const/16 v0, 0x16

    invoke-direct {p0, p1, p2, p3, v0}, LX/26Y;-><init>(LX/1Q8;JB)V

    return-void
.end method

.method public constructor <init>(LX/1Q8;JLjava/lang/String;)V
    .locals 1

    const/16 v0, 0x16

    invoke-direct {p0, p1, p2, p3, v0}, LX/26Y;-><init>(LX/1Q8;JB)V

    iput-object p4, p0, LX/26Y;->A00:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public A2N(Landroid/content/Context;LX/0t1;LX/2LO;ZZ)V
    .locals 4

    iget-object v0, p3, LX/2IT;->A00:LX/2IU;

    check-cast v0, LX/2LR;

    iget-object v0, v0, LX/2LR;->A03:LX/3NO;

    if-nez v0, :cond_0

    sget-object v0, LX/3NO;->A02:LX/3NO;

    :cond_0
    invoke-virtual {v0}, LX/2IU;->A07()LX/2IT;

    move-result-object v3

    check-cast v3, LX/3NN;

    iget-object v0, v3, LX/2IT;->A00:LX/2IU;

    check-cast v0, LX/3NO;

    iget-object v0, v0, LX/3NO;->A01:LX/2Ho;

    if-nez v0, :cond_1

    sget-object v0, LX/2Ho;->A05:LX/2Ho;

    :cond_1
    invoke-virtual {v0}, LX/2IU;->A07()LX/2IT;

    move-result-object v0

    check-cast v0, LX/2Hp;

    invoke-virtual {p0, v0}, LX/26Y;->A0u(LX/2Hp;)V

    invoke-virtual {v3}, LX/2IT;->A02()V

    iget-object v1, v3, LX/2IT;->A00:LX/2IU;

    check-cast v1, LX/3NO;

    invoke-virtual {v0}, LX/2IT;->A01()LX/2IU;

    move-result-object v0

    check-cast v0, LX/2Ho;

    iput-object v0, v1, LX/3NO;->A01:LX/2Ho;

    iget v0, v1, LX/3NO;->A00:I

    or-int/lit8 v0, v0, 0x1

    iput v0, v1, LX/3NO;->A00:I

    invoke-virtual {p3}, LX/2IT;->A02()V

    iget-object v2, p3, LX/2IT;->A00:LX/2IU;

    check-cast v2, LX/2LR;

    invoke-virtual {v3}, LX/2IT;->A01()LX/2IU;

    move-result-object v0

    check-cast v0, LX/3NO;

    iput-object v0, v2, LX/2LR;->A03:LX/3NO;

    iget v1, v2, LX/2LR;->A00:I

    const/high16 v0, 0x80000

    or-int/2addr v1, v0

    iput v1, v2, LX/2LR;->A00:I

    return-void
.end method
