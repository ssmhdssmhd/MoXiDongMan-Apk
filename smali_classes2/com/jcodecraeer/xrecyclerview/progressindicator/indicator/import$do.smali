.class synthetic Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import$do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic do:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import$if;->values()[Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import$if;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import$do;->do:[I

    :try_start_0
    sget-object v1, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import$if;->START:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import$if;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import$do;->do:[I

    sget-object v1, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import$if;->END:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import$if;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import$do;->do:[I

    sget-object v1, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import$if;->CANCEL:Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/import$if;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
