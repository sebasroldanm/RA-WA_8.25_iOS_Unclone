.class public final synthetic LX/11M;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic A00:LX/0YD;

.field private final synthetic A01:LX/2Kx;


# direct methods
.method public synthetic constructor <init>(LX/0YD;LX/2Kx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX/11M;->A00:LX/0YD;

    iput-object p2, p0, LX/11M;->A01:LX/2Kx;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, LX/11M;->A00:LX/0YD;

    iget-object v4, p0, LX/11M;->A01:LX/2Kx;

    iget-object v0, v0, LX/0YD;->A04:LX/0YB;

    iget-object v3, v0, LX/0YB;->A00:LX/0ZB;

    iget-object v2, v4, LX/2Kx;->A02:LX/0Z8;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v4}, LX/0OC;->A0P(Ljava/lang/Object;)LX/1h4;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, LX/0Z6;

    invoke-direct {v0, v1}, LX/0Z6;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v2, v0}, LX/0ZB;->A01(LX/0Z8;LX/0Z6;)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v0, "arguments have to be continuous"

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
