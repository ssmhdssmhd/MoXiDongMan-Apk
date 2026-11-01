.class Lcom/google/protobuf/v1;
.super Lcom/google/protobuf/s1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/s1<",
        "Lcom/google/protobuf/u1;",
        "Lcom/google/protobuf/u1;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/s1;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract(Lcom/google/protobuf/u1;Lcom/google/protobuf/u1;)Lcom/google/protobuf/u1;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/u1;->for()Lcom/google/protobuf/u1;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/protobuf/u1;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1, p2}, Lcom/google/protobuf/u1;->const(Lcom/google/protobuf/u1;Lcom/google/protobuf/u1;)Lcom/google/protobuf/u1;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public break(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/v1;->finally(Ljava/lang/Object;)Lcom/google/protobuf/u1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/u1;->goto()V

    return-void
.end method

.method public bridge synthetic case(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/v1;->extends(Ljava/lang/Object;)Lcom/google/protobuf/u1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic catch(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/protobuf/u1;

    check-cast p2, Lcom/google/protobuf/u1;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/v1;->abstract(Lcom/google/protobuf/u1;Lcom/google/protobuf/u1;)Lcom/google/protobuf/u1;

    move-result-object p1

    return-object p1
.end method

.method public continue()Lcom/google/protobuf/u1;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/u1;->final()Lcom/google/protobuf/u1;

    move-result-object v0

    return-object v0
.end method

.method public default(Lcom/google/protobuf/u1;IJ)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p2, v0}, Lcom/google/protobuf/c2;->for(II)I

    move-result p2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/u1;->while(ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic do(Ljava/lang/Object;II)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/protobuf/u1;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/v1;->return(Lcom/google/protobuf/u1;II)V

    return-void
.end method

.method public bridge synthetic else(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/v1;->finally(Ljava/lang/Object;)Lcom/google/protobuf/u1;

    move-result-object p1

    return-object p1
.end method

.method public extends(Ljava/lang/Object;)Lcom/google/protobuf/u1;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/v1;->finally(Ljava/lang/Object;)Lcom/google/protobuf/u1;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/protobuf/u1;->for()Lcom/google/protobuf/u1;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-static {}, Lcom/google/protobuf/u1;->final()Lcom/google/protobuf/u1;

    move-result-object v0

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/v1;->volatile(Ljava/lang/Object;Lcom/google/protobuf/u1;)V

    :cond_0
    return-object v0
.end method

.method public bridge synthetic final()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/v1;->continue()Lcom/google/protobuf/u1;

    move-result-object v0

    return-object v0
.end method

.method public finally(Ljava/lang/Object;)Lcom/google/protobuf/u1;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageLite;->do:Lcom/google/protobuf/u1;

    return-object p1
.end method

.method public bridge synthetic for(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/protobuf/u1;

    check-cast p3, Lcom/google/protobuf/u1;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/v1;->switch(Lcom/google/protobuf/u1;ILcom/google/protobuf/u1;)V

    return-void
.end method

.method public bridge synthetic goto(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/protobuf/u1;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/v1;->package(Lcom/google/protobuf/u1;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic if(Ljava/lang/Object;IJ)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/protobuf/u1;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/v1;->static(Lcom/google/protobuf/u1;IJ)V

    return-void
.end method

.method public bridge synthetic import(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/protobuf/u1;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/v1;->interface(Lcom/google/protobuf/u1;)Lcom/google/protobuf/u1;

    move-result-object p1

    return-object p1
.end method

.method public interface(Lcom/google/protobuf/u1;)Lcom/google/protobuf/u1;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/u1;->goto()V

    return-object p1
.end method

.method public bridge synthetic native(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/protobuf/u1;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/v1;->protected(Lcom/google/protobuf/u1;Lcom/google/protobuf/Writer;)V

    return-void
.end method

.method public bridge synthetic new(Ljava/lang/Object;ILcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/protobuf/u1;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/v1;->throws(Lcom/google/protobuf/u1;ILcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public package(Lcom/google/protobuf/u1;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/u1;->new()I

    move-result p1

    return p1
.end method

.method public private(Lcom/google/protobuf/u1;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/u1;->try()I

    move-result p1

    return p1
.end method

.method public protected(Lcom/google/protobuf/u1;Lcom/google/protobuf/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Lcom/google/protobuf/u1;->public(Lcom/google/protobuf/Writer;)V

    return-void
.end method

.method public bridge synthetic public(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/protobuf/u1;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/v1;->transient(Lcom/google/protobuf/u1;Lcom/google/protobuf/Writer;)V

    return-void
.end method

.method public return(Lcom/google/protobuf/u1;II)V
    .locals 1

    const/4 v0, 0x5

    .line 1
    invoke-static {p2, v0}, Lcom/google/protobuf/c2;->for(II)I

    move-result p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/u1;->while(ILjava/lang/Object;)V

    return-void
.end method

.method public static(Lcom/google/protobuf/u1;IJ)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p2, v0}, Lcom/google/protobuf/c2;->for(II)I

    move-result p2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/u1;->while(ILjava/lang/Object;)V

    return-void
.end method

.method public strictfp(Ljava/lang/Object;Lcom/google/protobuf/u1;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/v1;->volatile(Ljava/lang/Object;Lcom/google/protobuf/u1;)V

    return-void
.end method

.method public bridge synthetic super(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/google/protobuf/u1;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/v1;->strictfp(Ljava/lang/Object;Lcom/google/protobuf/u1;)V

    return-void
.end method

.method public switch(Lcom/google/protobuf/u1;ILcom/google/protobuf/u1;)V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-static {p2, v0}, Lcom/google/protobuf/c2;->for(II)I

    move-result p2

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/u1;->while(ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic this(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/protobuf/u1;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/v1;->private(Lcom/google/protobuf/u1;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic throw(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/google/protobuf/u1;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/v1;->volatile(Ljava/lang/Object;Lcom/google/protobuf/u1;)V

    return-void
.end method

.method public throws(Lcom/google/protobuf/u1;ILcom/google/protobuf/ByteString;)V
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-static {p2, v0}, Lcom/google/protobuf/c2;->for(II)I

    move-result p2

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/u1;->while(ILjava/lang/Object;)V

    return-void
.end method

.method public transient(Lcom/google/protobuf/u1;Lcom/google/protobuf/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Lcom/google/protobuf/u1;->switch(Lcom/google/protobuf/Writer;)V

    return-void
.end method

.method public bridge synthetic try(Ljava/lang/Object;IJ)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/protobuf/u1;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/v1;->default(Lcom/google/protobuf/u1;IJ)V

    return-void
.end method

.method public volatile(Ljava/lang/Object;Lcom/google/protobuf/u1;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite;

    iput-object p2, p1, Lcom/google/protobuf/GeneratedMessageLite;->do:Lcom/google/protobuf/u1;

    return-void
.end method

.method public while(Lcom/google/protobuf/Reader;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
