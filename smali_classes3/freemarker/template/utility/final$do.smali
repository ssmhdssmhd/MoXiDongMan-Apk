.class Lfreemarker/template/utility/final$do;
.super Ljava/io/Writer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/template/utility/final;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# static fields
.field private static final break:I = 0x2

.field private static final catch:I = 0x3

.field private static final class:I = 0x4

.field private static final const:I = 0x5

.field private static final else:I = 0x2

.field private static final final:I = 0x6

.field private static final goto:I = 0x0

.field private static final this:I = 0x1


# instance fields
.field private case:I

.field private final do:Ljava/io/Writer;

.field private final for:Z

.field private final if:[C

.field private new:I

.field private try:Z


# direct methods
.method public constructor <init>(Ljava/io/Writer;IZ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lfreemarker/template/utility/final$do;->new:I

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lfreemarker/template/utility/final$do;->try:Z

    .line 4
    iput v0, p0, Lfreemarker/template/utility/final$do;->case:I

    .line 5
    iput-object p1, p0, Lfreemarker/template/utility/final$do;->do:Ljava/io/Writer;

    .line 6
    iput-boolean p3, p0, Lfreemarker/template/utility/final$do;->for:Z

    .line 7
    new-array p1, p2, [C

    iput-object p1, p0, Lfreemarker/template/utility/final$do;->if:[C

    return-void
.end method

.method private do()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/template/utility/final$do;->do:Ljava/io/Writer;

    iget-object v1, p0, Lfreemarker/template/utility/final$do;->if:[C

    iget v2, p0, Lfreemarker/template/utility/final$do;->new:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/Writer;->write([CII)V

    .line 2
    iput v3, p0, Lfreemarker/template/utility/final$do;->new:I

    return-void
.end method

.method private for([CII)V
    .locals 4

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_2

    .line 1
    aget-char v0, p1, p2

    .line 2
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lfreemarker/template/utility/final$do;->try:Z

    .line 4
    invoke-direct {p0, v0}, Lfreemarker/template/utility/final$do;->if(C)V

    goto :goto_1

    .line 5
    :cond_0
    iget-boolean v1, p0, Lfreemarker/template/utility/final$do;->try:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lfreemarker/template/utility/final$do;->try:Z

    .line 7
    invoke-direct {p0}, Lfreemarker/template/utility/final$do;->new()V

    .line 8
    iget-object v1, p0, Lfreemarker/template/utility/final$do;->if:[C

    iget v2, p0, Lfreemarker/template/utility/final$do;->new:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lfreemarker/template/utility/final$do;->new:I

    aput-char v0, v1, v2

    goto :goto_1

    .line 9
    :cond_1
    iget-object v1, p0, Lfreemarker/template/utility/final$do;->if:[C

    iget v2, p0, Lfreemarker/template/utility/final$do;->new:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lfreemarker/template/utility/final$do;->new:I

    aput-char v0, v1, v2

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private if(C)V
    .locals 4

    .line 1
    iget v0, p0, Lfreemarker/template/utility/final$do;->case:I

    const/4 v1, 0x2

    const/16 v2, 0xa

    const/4 v3, 0x3

    if-eq v0, v1, :cond_2

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_1

    const/4 p1, 0x5

    .line 2
    iput p1, p0, Lfreemarker/template/utility/final$do;->case:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    .line 3
    iput p1, p0, Lfreemarker/template/utility/final$do;->case:I

    goto :goto_0

    :cond_2
    const/16 v0, 0xd

    if-ne p1, v0, :cond_3

    .line 4
    iput v3, p0, Lfreemarker/template/utility/final$do;->case:I

    goto :goto_0

    :cond_3
    if-ne p1, v2, :cond_4

    const/4 p1, 0x6

    .line 5
    iput p1, p0, Lfreemarker/template/utility/final$do;->case:I

    :cond_4
    :goto_0
    return-void
.end method

.method private new()V
    .locals 4

    .line 1
    iget v0, p0, Lfreemarker/template/utility/final$do;->case:I

    const/16 v1, 0xd

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    iget-object v0, p0, Lfreemarker/template/utility/final$do;->if:[C

    iget v2, p0, Lfreemarker/template/utility/final$do;->new:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lfreemarker/template/utility/final$do;->new:I

    aput-char v1, v0, v2

    .line 3
    :pswitch_1
    iget-object v0, p0, Lfreemarker/template/utility/final$do;->if:[C

    iget v1, p0, Lfreemarker/template/utility/final$do;->new:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lfreemarker/template/utility/final$do;->new:I

    const/16 v2, 0xa

    aput-char v2, v0, v1

    goto :goto_0

    .line 4
    :pswitch_2
    iget-object v0, p0, Lfreemarker/template/utility/final$do;->if:[C

    iget v2, p0, Lfreemarker/template/utility/final$do;->new:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lfreemarker/template/utility/final$do;->new:I

    aput-char v1, v0, v2

    goto :goto_0

    .line 5
    :pswitch_3
    iget-object v0, p0, Lfreemarker/template/utility/final$do;->if:[C

    iget v1, p0, Lfreemarker/template/utility/final$do;->new:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lfreemarker/template/utility/final$do;->new:I

    const/16 v2, 0x20

    aput-char v2, v0, v1

    .line 6
    :goto_0
    iget-boolean v0, p0, Lfreemarker/template/utility/final$do;->for:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    :goto_1
    iput v0, p0, Lfreemarker/template/utility/final$do;->case:I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lfreemarker/template/utility/final$do;->do()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lfreemarker/template/utility/final$do;->do()V

    .line 2
    iget-object v0, p0, Lfreemarker/template/utility/final$do;->do:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public write([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lfreemarker/template/utility/final$do;->if:[C

    array-length v0, v0

    iget v1, p0, Lfreemarker/template/utility/final$do;->new:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x2

    if-lt v0, p3, :cond_0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lfreemarker/template/utility/final$do;->for([CII)V

    return-void

    :cond_0
    if-gtz v0, :cond_1

    .line 3
    invoke-direct {p0}, Lfreemarker/template/utility/final$do;->do()V

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {p0, p1, p2, v0}, Lfreemarker/template/utility/final$do;->for([CII)V

    .line 5
    invoke-direct {p0}, Lfreemarker/template/utility/final$do;->do()V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0
.end method
