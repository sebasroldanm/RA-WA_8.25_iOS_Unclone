.class public final synthetic LX/1MU;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic A00:LX/1Ms;

.field private final synthetic A01:LX/24b;


# direct methods
.method public synthetic constructor <init>(LX/24b;LX/1Ms;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX/1MU;->A01:LX/24b;

    iput-object p2, p0, LX/1MU;->A00:LX/1Ms;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, LX/1MU;->A01:LX/24b;

    iget-object v1, p0, LX/1MU;->A00:LX/1Ms;

    iget-object v0, v0, LX/24b;->A01:LX/24D;

    iget-object v2, v1, LX/1Ms;->A04:Ljava/lang/String;

    invoke-static {}, LX/1Ru;->A01()V

    iget-object v0, v0, LX/1Rn;->A00:LX/1Rt;

    invoke-virtual {v0}, LX/1Rt;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX/1My;

    invoke-virtual {v0, v2}, LX/1My;->A02(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
