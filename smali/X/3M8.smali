.class public LX/3M8;
.super LX/2Gt;
.source ""

# interfaces
.implements LX/1Qq;
.implements LX/1Qo;
.implements LX/1Qs;


# instance fields
.field public A00:LX/1Qv;


# direct methods
.method public constructor <init>(LX/1Q8;J)V
    .locals 1

    const/16 v0, 0x1a

    invoke-direct {p0, p1, p2, p3, v0}, LX/2Gt;-><init>(LX/1Q8;JB)V

    return-void
.end method

.method public constructor <init>(LX/3M8;LX/1Q8;JLX/0tI;Z)V
    .locals 1

    invoke-direct/range {p0 .. p6}, LX/2Gt;-><init>(LX/2Gt;LX/1Q8;JLX/0tI;Z)V

    iget-object v0, p1, LX/3M8;->A00:LX/1Qv;

    invoke-virtual {v0}, LX/1Qv;->A00()LX/1Qv;

    move-result-object v0

    iput-object v0, p0, LX/3M8;->A00:LX/1Qv;

    return-void
.end method


# virtual methods
.method public A5G()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, LX/3M8;->A00:LX/1Qv;

    iget-object v0, v0, LX/1Qv;->A01:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v3, " "

    if-nez v0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LX/3M8;->A00:LX/1Qv;

    iget-object v0, v1, LX/1Qv;->A00:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, LX/1Qv;->A01:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {p0}, LX/26X;->A0x()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1, v3, v2}, LX/0CI;->A0E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    return-object v2

    :cond_1
    iget-object v0, p0, LX/3M8;->A00:LX/1Qv;

    iget-object v2, v0, LX/1Qv;->A00:Ljava/lang/String;

    goto :goto_0
.end method

.method public A5S()I
    .locals 1

    const v0, 0x7f08039e

    return v0
.end method

.method public A67(LX/181;)Ljava/lang/String;
    .locals 3

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt v1, v0, :cond_0

    const-string v0, "\ud83d\udcc4 "

    invoke-static {v0}, LX/0CI;->A0K(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, LX/3M8;->A00:LX/1Qv;

    iget-object v0, v0, LX/1Qv;->A00:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "("

    invoke-static {v0}, LX/0CI;->A0K(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v1, ") "

    const v0, 0x7f110272

    invoke-virtual {p1, v0}, LX/181;->A05(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, LX/3M8;->A00:LX/1Qv;

    iget-object v0, v0, LX/1Qv;->A00:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public A6h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LX/3M8;->A00:LX/1Qv;

    iget-object v0, v0, LX/1Qv;->A00:Ljava/lang/String;

    return-object v0
.end method

.method public A6l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LX/3M8;->A00:LX/1Qv;

    iget-object v0, v0, LX/1Qv;->A00:Ljava/lang/String;

    return-object v0
.end method

.method public A7D()LX/1Qv;
    .locals 1

    iget-object v0, p0, LX/3M8;->A00:LX/1Qv;

    return-object v0
.end method

.method public AJl(LX/1Qv;)V
    .locals 0

    iput-object p1, p0, LX/3M8;->A00:LX/1Qv;

    return-void
.end method
