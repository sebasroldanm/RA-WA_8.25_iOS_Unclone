.class public LX/28F;
.super LX/1Us;
.source ""


# instance fields
.field public final synthetic A00:LX/28G;


# direct methods
.method public constructor <init>(LX/28G;Landroid/content/Context;LX/1Uk;Landroid/view/View;Z)V
    .locals 7

    iput-object p1, p0, LX/28F;->A00:LX/28G;

    const v5, 0x7f04001e

    const/4 v6, 0x0

    move-object v0, p0

    move v4, p5

    move-object v3, p4

    move-object v2, p3

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, LX/1Us;-><init>(Landroid/content/Context;LX/1Uk;Landroid/view/View;ZII)V

    const v0, 0x800005

    iput v0, p0, LX/1Us;->A00:I

    iget-object v1, p1, LX/28G;->A0G:LX/1Uy;

    iput-object v1, p0, LX/1Us;->A04:LX/02C;

    iget-object v0, p0, LX/1Us;->A03:LX/1Ur;

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, LX/02D;->AJC(LX/02C;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public A02()V
    .locals 2

    iget-object v0, p0, LX/28F;->A00:LX/28G;

    iget-object v1, v0, LX/1Uf;->A05:LX/1Uk;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, LX/1Uk;->A0G(Z)V

    :cond_0
    iget-object v1, p0, LX/28F;->A00:LX/28G;

    const/4 v0, 0x0

    iput-object v0, v1, LX/28G;->A0A:LX/28F;

    invoke-super {p0}, LX/1Us;->A02()V

    return-void
.end method
