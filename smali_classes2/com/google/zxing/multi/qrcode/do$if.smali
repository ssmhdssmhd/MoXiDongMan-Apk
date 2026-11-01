.class final Lcom/google/zxing/multi/qrcode/do$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/multi/qrcode/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Comparator<",
        "Landroid/support/v4/wn1;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/zxing/multi/qrcode/do$do;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/zxing/multi/qrcode/do$if;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/support/v4/wn1;Landroid/support/v4/wn1;)I
    .locals 1

    .line 2
    invoke-virtual {p1}, Landroid/support/v4/wn1;->try()Ljava/util/Map;

    move-result-object p1

    sget-object v0, Lcom/google/zxing/goto;->STRUCTURED_APPEND_SEQUENCE:Lcom/google/zxing/goto;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3
    invoke-virtual {p2}, Landroid/support/v4/wn1;->try()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 4
    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/wn1;

    check-cast p2, Landroid/support/v4/wn1;

    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/multi/qrcode/do$if;->compare(Landroid/support/v4/wn1;Landroid/support/v4/wn1;)I

    move-result p1

    return p1
.end method
