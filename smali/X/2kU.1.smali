.class public final synthetic LX/2kU;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic A00:J

.field private final synthetic A01:LX/1RF;

.field private final synthetic A02:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(LX/1RF;Ljava/util/List;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX/2kU;->A01:LX/1RF;

    iput-object p2, p0, LX/2kU;->A02:Ljava/util/List;

    iput-wide p3, p0, LX/2kU;->A00:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v2, p0, LX/2kU;->A01:LX/1RF;

    iget-object v0, p0, LX/2kU;->A02:Ljava/util/List;

    iget-wide v7, p0, LX/2kU;->A00:J

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, LX/254;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const/4 v9, 0x0

    const/4 v4, 0x4

    invoke-virtual/range {v2 .. v9}, LX/1RF;->A04(LX/254;IDJLjava/lang/Double;)Ljava/lang/Double;

    goto :goto_0

    :cond_0
    return-void
.end method
