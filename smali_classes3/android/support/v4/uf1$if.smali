.class public final enum Landroid/support/v4/uf1$if;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/uf1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/support/v4/uf1$if;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BUSY:Landroid/support/v4/uf1$if;

.field public static final enum READY:Landroid/support/v4/uf1$if;

.field private static final synthetic do:[Landroid/support/v4/uf1$if;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Landroid/support/v4/uf1$if;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/v4/uf1$if;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/v4/uf1$if;->READY:Landroid/support/v4/uf1$if;

    new-instance v1, Landroid/support/v4/uf1$if;

    const-string v3, "BUSY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/support/v4/uf1$if;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/support/v4/uf1$if;->BUSY:Landroid/support/v4/uf1$if;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/support/v4/uf1$if;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Landroid/support/v4/uf1$if;->do:[Landroid/support/v4/uf1$if;

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

.method public static valueOf(Ljava/lang/String;)Landroid/support/v4/uf1$if;
    .locals 1

    .line 1
    const-class v0, Landroid/support/v4/uf1$if;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/support/v4/uf1$if;

    return-object p0
.end method

.method public static values()[Landroid/support/v4/uf1$if;
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/uf1$if;->do:[Landroid/support/v4/uf1$if;

    invoke-virtual {v0}, [Landroid/support/v4/uf1$if;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v4/uf1$if;

    return-object v0
.end method
