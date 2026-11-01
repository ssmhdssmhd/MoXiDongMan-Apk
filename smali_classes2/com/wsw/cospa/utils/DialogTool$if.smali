.class public final enum Lcom/wsw/cospa/utils/DialogTool$if;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/utils/DialogTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/wsw/cospa/utils/DialogTool$if;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum HORIZONTAL:Lcom/wsw/cospa/utils/DialogTool$if;

.field public static final enum VERTICAL:Lcom/wsw/cospa/utils/DialogTool$if;

.field private static final synthetic do:[Lcom/wsw/cospa/utils/DialogTool$if;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/wsw/cospa/utils/DialogTool$if;

    const-string v1, "VERTICAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/wsw/cospa/utils/DialogTool$if;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wsw/cospa/utils/DialogTool$if;->VERTICAL:Lcom/wsw/cospa/utils/DialogTool$if;

    .line 2
    new-instance v1, Lcom/wsw/cospa/utils/DialogTool$if;

    const-string v3, "HORIZONTAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/wsw/cospa/utils/DialogTool$if;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/wsw/cospa/utils/DialogTool$if;->HORIZONTAL:Lcom/wsw/cospa/utils/DialogTool$if;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/wsw/cospa/utils/DialogTool$if;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/wsw/cospa/utils/DialogTool$if;->do:[Lcom/wsw/cospa/utils/DialogTool$if;

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

.method public static valueOf(Ljava/lang/String;)Lcom/wsw/cospa/utils/DialogTool$if;
    .locals 1

    .line 1
    const-class v0, Lcom/wsw/cospa/utils/DialogTool$if;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/utils/DialogTool$if;

    return-object p0
.end method

.method public static values()[Lcom/wsw/cospa/utils/DialogTool$if;
    .locals 1

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/DialogTool$if;->do:[Lcom/wsw/cospa/utils/DialogTool$if;

    invoke-virtual {v0}, [Lcom/wsw/cospa/utils/DialogTool$if;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wsw/cospa/utils/DialogTool$if;

    return-object v0
.end method
