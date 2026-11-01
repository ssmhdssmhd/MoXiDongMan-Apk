.class public final enum Landroid/support/v4/uf1$for;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/uf1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "for"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/support/v4/uf1$for;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ADD_ENTRY:Landroid/support/v4/uf1$for;

.field public static final enum CALCULATE_CRC:Landroid/support/v4/uf1$for;

.field public static final enum EXTRACT_ENTRY:Landroid/support/v4/uf1$for;

.field public static final enum MERGE_ZIP_FILES:Landroid/support/v4/uf1$for;

.field public static final enum NONE:Landroid/support/v4/uf1$for;

.field public static final enum REMOVE_ENTRY:Landroid/support/v4/uf1$for;

.field public static final enum SET_COMMENT:Landroid/support/v4/uf1$for;

.field private static final synthetic do:[Landroid/support/v4/uf1$for;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Landroid/support/v4/uf1$for;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/v4/uf1$for;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/v4/uf1$for;->NONE:Landroid/support/v4/uf1$for;

    new-instance v1, Landroid/support/v4/uf1$for;

    const-string v3, "ADD_ENTRY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/support/v4/uf1$for;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/support/v4/uf1$for;->ADD_ENTRY:Landroid/support/v4/uf1$for;

    new-instance v3, Landroid/support/v4/uf1$for;

    const-string v5, "REMOVE_ENTRY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroid/support/v4/uf1$for;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/support/v4/uf1$for;->REMOVE_ENTRY:Landroid/support/v4/uf1$for;

    new-instance v5, Landroid/support/v4/uf1$for;

    const-string v7, "CALCULATE_CRC"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroid/support/v4/uf1$for;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroid/support/v4/uf1$for;->CALCULATE_CRC:Landroid/support/v4/uf1$for;

    new-instance v7, Landroid/support/v4/uf1$for;

    const-string v9, "EXTRACT_ENTRY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Landroid/support/v4/uf1$for;-><init>(Ljava/lang/String;I)V

    sput-object v7, Landroid/support/v4/uf1$for;->EXTRACT_ENTRY:Landroid/support/v4/uf1$for;

    new-instance v9, Landroid/support/v4/uf1$for;

    const-string v11, "MERGE_ZIP_FILES"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Landroid/support/v4/uf1$for;-><init>(Ljava/lang/String;I)V

    sput-object v9, Landroid/support/v4/uf1$for;->MERGE_ZIP_FILES:Landroid/support/v4/uf1$for;

    new-instance v11, Landroid/support/v4/uf1$for;

    const-string v13, "SET_COMMENT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Landroid/support/v4/uf1$for;-><init>(Ljava/lang/String;I)V

    sput-object v11, Landroid/support/v4/uf1$for;->SET_COMMENT:Landroid/support/v4/uf1$for;

    const/4 v13, 0x7

    new-array v13, v13, [Landroid/support/v4/uf1$for;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Landroid/support/v4/uf1$for;->do:[Landroid/support/v4/uf1$for;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/support/v4/uf1$for;
    .locals 1

    .line 1
    const-class v0, Landroid/support/v4/uf1$for;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/support/v4/uf1$for;

    return-object p0
.end method

.method public static values()[Landroid/support/v4/uf1$for;
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/uf1$for;->do:[Landroid/support/v4/uf1$for;

    invoke-virtual {v0}, [Landroid/support/v4/uf1$for;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v4/uf1$for;

    return-object v0
.end method
