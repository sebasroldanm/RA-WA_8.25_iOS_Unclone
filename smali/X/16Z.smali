.class public final synthetic LX/16Z;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic A00:LX/17D;


# direct methods
.method public synthetic constructor <init>(LX/17D;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX/16Z;->A00:LX/17D;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v2, p0, LX/16Z;->A00:LX/17D;

    iget-object v1, v2, LX/17D;->A04:LX/2JK;

    iget-object v0, v1, LX/2JK;->A00:LX/17D;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    iput-object v0, v1, LX/2JK;->A00:LX/17D;

    :cond_0
    return-void
.end method
