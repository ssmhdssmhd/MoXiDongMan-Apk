.class final Lcom/googlecode/protobuf/format/new$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/protobuf/format/new;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation


# instance fields
.field public do:Ljava/lang/Appendable;

.field public if:Z


# direct methods
.method public constructor <init>(Ljava/lang/Appendable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/googlecode/protobuf/format/new$if;->if:Z

    .line 3
    iput-object p1, p0, Lcom/googlecode/protobuf/format/new$if;->do:Ljava/lang/Appendable;

    return-void
.end method

.method private new(Ljava/lang/CharSequence;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    iget-boolean p2, p0, Lcom/googlecode/protobuf/format/new$if;->if:Z

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 2
    iput-boolean p2, p0, Lcom/googlecode/protobuf/format/new$if;->if:Z

    .line 3
    :cond_1
    iget-object p2, p0, Lcom/googlecode/protobuf/format/new$if;->do:Ljava/lang/Appendable;

    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method


# virtual methods
.method public do()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "<div style=\"margin-left: 25px\">"

    .line 1
    invoke-virtual {p0, v0}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public for(Ljava/lang/CharSequence;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    sub-int v2, v1, v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const-string v4, "<br/>"

    .line 3
    invoke-direct {p0, v4, v2}, Lcom/googlecode/protobuf/format/new$if;->new(Ljava/lang/CharSequence;I)V

    add-int/lit8 v2, v1, 0x1

    .line 4
    iput-boolean v3, p0, Lcom/googlecode/protobuf/format/new$if;->if:Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {p1, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    sub-int/2addr v0, v2

    invoke-direct {p0, p1, v0}, Lcom/googlecode/protobuf/format/new$if;->new(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public if()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "</div>"

    .line 1
    invoke-virtual {p0, v0}, Lcom/googlecode/protobuf/format/new$if;->for(Ljava/lang/CharSequence;)V

    return-void
.end method
