.class public final enum LX/38c;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements LX/0Ww;


# static fields
.field public static final synthetic A00:[LX/38c;

.field public static final enum A01:LX/38c;

.field public static final enum A02:LX/38c;

.field public static final enum A03:LX/38c;


# instance fields
.field public final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v6, LX/38c;

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "FOUR_ROW_TEMPLATE"

    invoke-direct {v6, v0, v4, v5}, LX/38c;-><init>(Ljava/lang/String;II)V

    sput-object v6, LX/38c;->A02:LX/38c;

    new-instance v3, LX/38c;

    const/4 v2, 0x2

    const-string v0, "HYDRATED_FOUR_ROW_TEMPLATE"

    invoke-direct {v3, v0, v5, v2}, LX/38c;-><init>(Ljava/lang/String;II)V

    sput-object v3, LX/38c;->A03:LX/38c;

    new-instance v1, LX/38c;

    const-string v0, "FORMAT_NOT_SET"

    invoke-direct {v1, v0, v2, v4}, LX/38c;-><init>(Ljava/lang/String;II)V

    sput-object v1, LX/38c;->A01:LX/38c;

    const/4 v0, 0x3

    new-array v0, v0, [LX/38c;

    aput-object v6, v0, v4

    aput-object v3, v0, v5

    aput-object v1, v0, v2

    sput-object v0, LX/38c;->A00:[LX/38c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, LX/38c;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LX/38c;
    .locals 1

    const-class v0, LX/38c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LX/38c;

    return-object v0
.end method

.method public static values()[LX/38c;
    .locals 1

    sget-object v0, LX/38c;->A00:[LX/38c;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LX/38c;

    return-object v0
.end method
