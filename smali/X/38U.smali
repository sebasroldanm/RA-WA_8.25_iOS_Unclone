.class public final enum LX/38U;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements LX/0Ww;


# static fields
.field public static final synthetic A00:[LX/38U;

.field public static final enum A01:LX/38U;

.field public static final enum A02:LX/38U;


# instance fields
.field public final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v5, LX/38U;

    const/4 v4, 0x2

    const/4 v3, 0x0

    const-string v0, "LOCATION"

    invoke-direct {v5, v0, v3, v4}, LX/38U;-><init>(Ljava/lang/String;II)V

    sput-object v5, LX/38U;->A02:LX/38U;

    new-instance v2, LX/38U;

    const/4 v1, 0x1

    const-string v0, "ACTION_NOT_SET"

    invoke-direct {v2, v0, v1, v3}, LX/38U;-><init>(Ljava/lang/String;II)V

    sput-object v2, LX/38U;->A01:LX/38U;

    new-array v0, v4, [LX/38U;

    aput-object v5, v0, v3

    aput-object v2, v0, v1

    sput-object v0, LX/38U;->A00:[LX/38U;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, LX/38U;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LX/38U;
    .locals 1

    const-class v0, LX/38U;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LX/38U;

    return-object v0
.end method

.method public static values()[LX/38U;
    .locals 1

    sget-object v0, LX/38U;->A00:[LX/38U;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LX/38U;

    return-object v0
.end method
