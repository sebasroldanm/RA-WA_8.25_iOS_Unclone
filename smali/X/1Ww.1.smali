.class public LX/1Ww;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LX/07x;


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:Ljava/lang/String;

.field public final synthetic A03:LX/1Wy;


# direct methods
.method public constructor <init>(LX/1Wy;Ljava/lang/String;II)V
    .locals 0

    iput-object p1, p0, LX/1Ww;->A03:LX/1Wy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LX/1Ww;->A02:Ljava/lang/String;

    iput p3, p0, LX/1Ww;->A01:I

    iput p4, p0, LX/1Ww;->A00:I

    return-void
.end method


# virtual methods
.method public A3u(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 6

    iget-object v0, p0, LX/1Ww;->A03:LX/1Wy;

    iget-object v1, v0, LX/1Wy;->A06:LX/28X;

    if-eqz v1, :cond_0

    iget v0, p0, LX/1Ww;->A01:I

    if-gez v0, :cond_0

    iget-object v0, p0, LX/1Ww;->A02:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {v1}, LX/28X;->A0A()LX/07o;

    move-result-object v0

    invoke-virtual {v0}, LX/07o;->A0C()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, LX/1Ww;->A03:LX/1Wy;

    iget-object v3, p0, LX/1Ww;->A02:Ljava/lang/String;

    iget v4, p0, LX/1Ww;->A01:I

    iget v5, p0, LX/1Ww;->A00:I

    move-object v2, p2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, LX/1Wy;->A1D(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method
