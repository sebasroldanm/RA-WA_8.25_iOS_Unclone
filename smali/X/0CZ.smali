.class public LX/0CZ;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public A00:LX/0CR;

.field public A01:Ljava/lang/String;

.field public A02:Ljava/util/List;

.field public A03:Ljava/util/List;


# direct methods
.method public constructor <init>(LX/0CR;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LX/0CZ;->A02:Ljava/util/List;

    iput-object v0, p0, LX/0CZ;->A03:Ljava/util/List;

    if-nez p1, :cond_0

    sget-object p1, LX/0CR;->A02:LX/0CR;

    :cond_0
    iput-object p1, p0, LX/0CZ;->A00:LX/0CR;

    iput-object p2, p0, LX/0CZ;->A01:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public A00(Ljava/lang/String;LX/0CP;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, LX/0CZ;->A02:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LX/0CZ;->A02:Ljava/util/List;

    :cond_0
    iget-object v1, p0, LX/0CZ;->A02:Ljava/util/List;

    new-instance v0, LX/0CO;

    invoke-direct {v0, p1, p2, p3}, LX/0CO;-><init>(Ljava/lang/String;LX/0CP;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LX/0CZ;->A00:LX/0CR;

    sget-object v0, LX/0CR;->A01:LX/0CR;

    if-ne v1, v0, :cond_5

    const-string v0, "> "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    iget-object v0, p0, LX/0CZ;->A01:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "*"

    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, LX/0CZ;->A02:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LX/0CO;

    const/16 v0, 0x5b

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, v2, LX/0CO;->A01:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, LX/0CO;->A00:LX/0CP;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_4

    const/4 v0, 0x2

    if-eq v1, v0, :cond_3

    const/4 v0, 0x3

    if-ne v1, v0, :cond_2

    const-string v0, "|="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    iget-object v0, v2, LX/0CO;->A02:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/16 v0, 0x5d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string v0, "~="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    const/16 v0, 0x3d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    sget-object v0, LX/0CR;->A03:LX/0CR;

    if-ne v1, v0, :cond_0

    const-string v0, "+ "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_6
    iget-object v0, p0, LX/0CZ;->A03:Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LX/0CT;

    const/16 v0, 0x3a

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
