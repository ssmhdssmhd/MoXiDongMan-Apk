.class final Lcom/google/zxing/datamatrix/detector/do$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/datamatrix/detector/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation


# instance fields
.field private final do:Landroid/support/v4/yn1;

.field private final for:I

.field private final if:Landroid/support/v4/yn1;


# direct methods
.method private constructor <init>(Landroid/support/v4/yn1;Landroid/support/v4/yn1;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/zxing/datamatrix/detector/do$if;->do:Landroid/support/v4/yn1;

    .line 4
    iput-object p2, p0, Lcom/google/zxing/datamatrix/detector/do$if;->if:Landroid/support/v4/yn1;

    .line 5
    iput p3, p0, Lcom/google/zxing/datamatrix/detector/do$if;->for:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/support/v4/yn1;Landroid/support/v4/yn1;ILcom/google/zxing/datamatrix/detector/do$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/zxing/datamatrix/detector/do$if;-><init>(Landroid/support/v4/yn1;Landroid/support/v4/yn1;I)V

    return-void
.end method


# virtual methods
.method public do()Landroid/support/v4/yn1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/datamatrix/detector/do$if;->do:Landroid/support/v4/yn1;

    return-object v0
.end method

.method public for()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/datamatrix/detector/do$if;->for:I

    return v0
.end method

.method public if()Landroid/support/v4/yn1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/datamatrix/detector/do$if;->if:Landroid/support/v4/yn1;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/zxing/datamatrix/detector/do$if;->do:Landroid/support/v4/yn1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/zxing/datamatrix/detector/do$if;->if:Landroid/support/v4/yn1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/zxing/datamatrix/detector/do$if;->for:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
