.class public final enum Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import$if;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import$if;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CANCEL:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import$if;

.field public static final enum END:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import$if;

.field public static final enum START:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import$if;

.field private static final synthetic do:[Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import$if;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import$if;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import$if;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import$if;->START:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import$if;

    new-instance v1, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import$if;

    const-string v3, "END"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import$if;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import$if;->END:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import$if;

    new-instance v3, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import$if;

    const-string v5, "CANCEL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import$if;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import$if;->CANCEL:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import$if;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import$if;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 2
    sput-object v5, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import$if;->do:[Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import$if;

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

.method public static valueOf(Ljava/lang/String;)Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import$if;
    .locals 1

    .line 1
    const-class v0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import$if;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import$if;

    return-object p0
.end method

.method public static values()[Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import$if;
    .locals 1

    .line 1
    sget-object v0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import$if;->do:[Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import$if;

    invoke-virtual {v0}, [Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import$if;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import$if;

    return-object v0
.end method
