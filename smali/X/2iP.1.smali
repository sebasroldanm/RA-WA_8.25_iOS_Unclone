.class public LX/2iP;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public A00:LX/1BJ;

.field public final A01:LX/28c;

.field public final A02:LX/28c;

.field public final A03:LX/0qX;

.field public final A04:LX/13q;

.field public final A05:LX/1Ad;


# direct methods
.method public constructor <init>(LX/2p0;LX/13q;LX/0qX;LX/1Ad;LX/08c;LX/08c;LX/08c;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LX/28c;

    invoke-direct {v0}, LX/28c;-><init>()V

    iput-object v0, p0, LX/2iP;->A02:LX/28c;

    new-instance v0, LX/28c;

    invoke-direct {v0}, LX/28c;-><init>()V

    iput-object v0, p0, LX/2iP;->A01:LX/28c;

    iput-object p2, p0, LX/2iP;->A04:LX/13q;

    iput-object p3, p0, LX/2iP;->A03:LX/0qX;

    iput-object p4, p0, LX/2iP;->A05:LX/1Ad;

    new-instance v0, LX/1BJ;

    invoke-direct {v0}, LX/1BJ;-><init>()V

    iput-object v0, p0, LX/2iP;->A00:LX/1BJ;

    iget-object v4, p0, LX/2iP;->A01:LX/28c;

    iget-object v3, p0, LX/2iP;->A02:LX/28c;

    new-instance v2, LX/3By;

    invoke-direct {v2, p0}, LX/3By;-><init>(LX/2iP;)V

    const/4 v1, 0x1

    new-instance v0, LX/3FS;

    invoke-direct {v0, p1, v1, v2, v4}, LX/3FS;-><init>(LX/2p0;ZLX/04B;LX/28c;)V

    invoke-virtual {v4, v3, v0}, LX/28c;->A0B(LX/08c;LX/08e;)V

    iget-object v1, p0, LX/2iP;->A02:LX/28c;

    new-instance v0, LX/3Bu;

    invoke-direct {v0, p0}, LX/3Bu;-><init>(LX/2iP;)V

    invoke-virtual {v1, p5, v0}, LX/28c;->A0B(LX/08c;LX/08e;)V

    iget-object v1, p0, LX/2iP;->A02:LX/28c;

    new-instance v0, LX/3Bt;

    invoke-direct {v0, p0}, LX/3Bt;-><init>(LX/2iP;)V

    invoke-virtual {v1, p6, v0}, LX/28c;->A0B(LX/08c;LX/08e;)V

    iget-object v1, p0, LX/2iP;->A02:LX/28c;

    new-instance v0, LX/3Bs;

    invoke-direct {v0, p0}, LX/3Bs;-><init>(LX/2iP;)V

    invoke-virtual {v1, p7, v0}, LX/28c;->A0B(LX/08c;LX/08e;)V

    return-void
.end method
