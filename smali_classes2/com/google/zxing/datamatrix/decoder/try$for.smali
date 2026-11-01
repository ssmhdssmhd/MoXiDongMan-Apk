.class final Lcom/google/zxing/datamatrix/decoder/try$for;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/datamatrix/decoder/try;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "for"
.end annotation


# instance fields
.field private final do:I

.field private final if:[Lcom/google/zxing/datamatrix/decoder/try$if;


# direct methods
.method private constructor <init>(ILcom/google/zxing/datamatrix/decoder/try$if;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/google/zxing/datamatrix/decoder/try$for;->do:I

    const/4 p1, 0x1

    new-array p1, p1, [Lcom/google/zxing/datamatrix/decoder/try$if;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    .line 5
    iput-object p1, p0, Lcom/google/zxing/datamatrix/decoder/try$for;->if:[Lcom/google/zxing/datamatrix/decoder/try$if;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/google/zxing/datamatrix/decoder/try$if;Lcom/google/zxing/datamatrix/decoder/try$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/datamatrix/decoder/try$for;-><init>(ILcom/google/zxing/datamatrix/decoder/try$if;)V

    return-void
.end method

.method private constructor <init>(ILcom/google/zxing/datamatrix/decoder/try$if;Lcom/google/zxing/datamatrix/decoder/try$if;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lcom/google/zxing/datamatrix/decoder/try$for;->do:I

    const/4 p1, 0x2

    new-array p1, p1, [Lcom/google/zxing/datamatrix/decoder/try$if;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const/4 p2, 0x1

    aput-object p3, p1, p2

    .line 8
    iput-object p1, p0, Lcom/google/zxing/datamatrix/decoder/try$for;->if:[Lcom/google/zxing/datamatrix/decoder/try$if;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/google/zxing/datamatrix/decoder/try$if;Lcom/google/zxing/datamatrix/decoder/try$if;Lcom/google/zxing/datamatrix/decoder/try$do;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/zxing/datamatrix/decoder/try$for;-><init>(ILcom/google/zxing/datamatrix/decoder/try$if;Lcom/google/zxing/datamatrix/decoder/try$if;)V

    return-void
.end method


# virtual methods
.method public do()[Lcom/google/zxing/datamatrix/decoder/try$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/datamatrix/decoder/try$for;->if:[Lcom/google/zxing/datamatrix/decoder/try$if;

    return-object v0
.end method

.method public if()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/datamatrix/decoder/try$for;->do:I

    return v0
.end method
