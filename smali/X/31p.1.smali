.class public final synthetic LX/31p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LX/0tR;


# instance fields
.field private final synthetic A00:LX/31r;


# direct methods
.method public synthetic constructor <init>(LX/31r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX/31p;->A00:LX/31r;

    return-void
.end method


# virtual methods
.method public final AEt(I)Z
    .locals 1

    iget-object v0, p0, LX/31p;->A00:LX/31r;

    iget-object v0, v0, LX/2Tr;->A05:LX/2Tq;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, LX/2Tq;->AEr(I)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
