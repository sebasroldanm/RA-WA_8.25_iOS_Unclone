.class public final synthetic LX/34S;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LX/2Xz;


# instance fields
.field private final synthetic A00:LX/0o8;


# direct methods
.method public synthetic constructor <init>(LX/0o8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX/34S;->A00:LX/0o8;

    return-void
.end method


# virtual methods
.method public final AFX(LX/1PY;)V
    .locals 2

    iget-object v1, p0, LX/34S;->A00:LX/0o8;

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-interface {v1, v0}, LX/0o8;->AFd(Z)V

    :cond_1
    return-void
.end method
