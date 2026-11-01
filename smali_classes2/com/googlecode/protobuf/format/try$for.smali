.class final Lcom/googlecode/protobuf/format/try$for;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/protobuf/format/try;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "for"
.end annotation


# instance fields
.field private do:Ljava/lang/Appendable;

.field private final for:Ljava/lang/StringBuilder;

.field private if:Z


# direct methods
.method private constructor <init>(Ljava/lang/Appendable;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/googlecode/protobuf/format/try$for;->if:Z

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/googlecode/protobuf/format/try$for;->for:Ljava/lang/StringBuilder;

    .line 5
    iput-object p1, p0, Lcom/googlecode/protobuf/format/try$for;->do:Ljava/lang/Appendable;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Appendable;Lcom/googlecode/protobuf/format/try$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/googlecode/protobuf/format/try$for;-><init>(Ljava/lang/Appendable;)V

    return-void
.end method

.method private new(Ljava/lang/CharSequence;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    iget-boolean p2, p0, Lcom/googlecode/protobuf/format/try$for;->if:Z

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 2
    iput-boolean p2, p0, Lcom/googlecode/protobuf/format/try$for;->if:Z

    .line 3
    iget-object p2, p0, Lcom/googlecode/protobuf/format/try$for;->do:Ljava/lang/Appendable;

    iget-object v0, p0, Lcom/googlecode/protobuf/format/try$for;->for:Ljava/lang/StringBuilder;

    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 4
    :cond_1
    iget-object p2, p0, Lcom/googlecode/protobuf/format/try$for;->do:Ljava/lang/Appendable;

    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/protobuf/format/try$for;->for:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object p1, p0, Lcom/googlecode/protobuf/format/try$for;->for:Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 3
    invoke-interface {p1, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    sub-int v2, v1, v2

    const/4 v4, 0x1

    add-int/2addr v2, v4

    invoke-direct {p0, v3, v2}, Lcom/googlecode/protobuf/format/try$for;->new(Ljava/lang/CharSequence;I)V

    add-int/lit8 v2, v1, 0x1

    .line 4
    iput-boolean v4, p0, Lcom/googlecode/protobuf/format/try$for;->if:Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {p1, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    sub-int/2addr v0, v2

    invoke-direct {p0, p1, v0}, Lcom/googlecode/protobuf/format/try$for;->new(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public if(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/googlecode/protobuf/format/try$for;->for:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/googlecode/protobuf/format/try$for;->for:Ljava/lang/StringBuilder;

    sub-int p1, v0, p1

    invoke-virtual {v1, p1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, " Outdent() without matching Indent()."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
