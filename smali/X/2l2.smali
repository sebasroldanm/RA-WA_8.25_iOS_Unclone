.class public final synthetic LX/2l2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic A00:LX/3Du;

.field private final synthetic A01:LX/2m0;


# direct methods
.method public synthetic constructor <init>(LX/3Du;LX/2m0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX/2l2;->A00:LX/3Du;

    iput-object p2, p0, LX/2l2;->A01:LX/2m0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v1, p0, LX/2l2;->A00:LX/3Du;

    iget-object v0, p0, LX/2l2;->A01:LX/2m0;

    invoke-virtual {v1, v0}, LX/3Du;->A0D(LX/2m0;)V

    return-void
.end method
