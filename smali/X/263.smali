.class public LX/263;
.super LX/1Rn;
.source ""


# static fields
.field public static final A00:LX/263;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LX/263;

    invoke-direct {v0}, LX/263;-><init>()V

    sput-object v0, LX/263;->A00:LX/263;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LX/1Rn;-><init>()V

    return-void
.end method


# virtual methods
.method public A02(LX/1Dh;)V
    .locals 2

    invoke-static {}, LX/1Ru;->A01()V

    iget-object v0, p0, LX/1Rn;->A00:LX/1Rt;

    invoke-virtual {v0}, LX/1Rt;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX/1Pb;

    invoke-interface {v0, p1}, LX/1Pb;->AEY(LX/1Dh;)V

    goto :goto_0

    :cond_0
    return-void
.end method
