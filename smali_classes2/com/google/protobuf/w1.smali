.class Lcom/google/protobuf/w1;
.super Lcom/google/protobuf/s1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/s1<",
        "Lcom/google/protobuf/t1;",
        "Lcom/google/protobuf/t1$if;",
        ">;"
    }
.end annotation


# instance fields
.field private final do:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/s1;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/google/protobuf/w1;->do:Z

    return-void
.end method


# virtual methods
.method public abstract(Lcom/google/protobuf/t1;Lcom/google/protobuf/t1;)Lcom/google/protobuf/t1;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/t1;->throw()Lcom/google/protobuf/t1$if;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/protobuf/t1$if;->public(Lcom/google/protobuf/t1;)Lcom/google/protobuf/t1$if;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/t1$if;->new()Lcom/google/protobuf/t1;

    move-result-object p1

    return-object p1
.end method

.method public break(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic case(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/w1;->extends(Ljava/lang/Object;)Lcom/google/protobuf/t1$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic catch(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/protobuf/t1;

    check-cast p2, Lcom/google/protobuf/t1;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/w1;->abstract(Lcom/google/protobuf/t1;Lcom/google/protobuf/t1;)Lcom/google/protobuf/t1;

    move-result-object p1

    return-object p1
.end method

.method public continue()Lcom/google/protobuf/t1$if;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/t1;->this()Lcom/google/protobuf/t1$if;

    move-result-object v0

    return-object v0
.end method

.method public default(Lcom/google/protobuf/t1$if;IJ)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/t1$for;->return()Lcom/google/protobuf/t1$for$do;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/google/protobuf/t1$for$do;->case(J)Lcom/google/protobuf/t1$for$do;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/protobuf/t1$for$do;->else()Lcom/google/protobuf/t1$for;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/t1$if;->const(ILcom/google/protobuf/t1$for;)Lcom/google/protobuf/t1$if;

    return-void
.end method

.method public bridge synthetic do(Ljava/lang/Object;II)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/protobuf/t1$if;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/w1;->return(Lcom/google/protobuf/t1$if;II)V

    return-void
.end method

.method public bridge synthetic else(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/w1;->finally(Ljava/lang/Object;)Lcom/google/protobuf/t1;

    move-result-object p1

    return-object p1
.end method

.method public extends(Ljava/lang/Object;)Lcom/google/protobuf/t1$if;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/protobuf/GeneratedMessageV3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    invoke-virtual {p1}, Lcom/google/protobuf/t1;->throw()Lcom/google/protobuf/t1$if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic final()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/w1;->continue()Lcom/google/protobuf/t1$if;

    move-result-object v0

    return-object v0
.end method

.method public finally(Ljava/lang/Object;)Lcom/google/protobuf/t1;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/protobuf/GeneratedMessageV3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    return-object p1
.end method

.method public bridge synthetic for(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/protobuf/t1$if;

    check-cast p3, Lcom/google/protobuf/t1;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/w1;->switch(Lcom/google/protobuf/t1$if;ILcom/google/protobuf/t1;)V

    return-void
.end method

.method public bridge synthetic goto(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/protobuf/t1;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/w1;->package(Lcom/google/protobuf/t1;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic if(Ljava/lang/Object;IJ)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/protobuf/t1$if;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/w1;->static(Lcom/google/protobuf/t1$if;IJ)V

    return-void
.end method

.method public bridge synthetic import(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/protobuf/t1$if;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/w1;->interface(Lcom/google/protobuf/t1$if;)Lcom/google/protobuf/t1;

    move-result-object p1

    return-object p1
.end method

.method public interface(Lcom/google/protobuf/t1$if;)Lcom/google/protobuf/t1;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/t1$if;->new()Lcom/google/protobuf/t1;

    move-result-object p1

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
    check-cast p1, Lcom/google/protobuf/t1;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/w1;->protected(Lcom/google/protobuf/t1;Lcom/google/protobuf/Writer;)V

    return-void
.end method

.method public bridge synthetic new(Ljava/lang/Object;ILcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/protobuf/t1$if;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/w1;->throws(Lcom/google/protobuf/t1$if;ILcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public package(Lcom/google/protobuf/t1;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/t1;->getSerializedSize()I

    move-result p1

    return p1
.end method

.method public private(Lcom/google/protobuf/t1;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/t1;->else()I

    move-result p1

    return p1
.end method

.method public protected(Lcom/google/protobuf/t1;Lcom/google/protobuf/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Lcom/google/protobuf/t1;->import(Lcom/google/protobuf/Writer;)V

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
    check-cast p1, Lcom/google/protobuf/t1;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/w1;->transient(Lcom/google/protobuf/t1;Lcom/google/protobuf/Writer;)V

    return-void
.end method

.method public return(Lcom/google/protobuf/t1$if;II)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/t1$for;->return()Lcom/google/protobuf/t1$for$do;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/protobuf/t1$for$do;->if(I)Lcom/google/protobuf/t1$for$do;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/protobuf/t1$for$do;->else()Lcom/google/protobuf/t1$for;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/t1$if;->const(ILcom/google/protobuf/t1$for;)Lcom/google/protobuf/t1$if;

    return-void
.end method

.method public static(Lcom/google/protobuf/t1$if;IJ)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/t1$for;->return()Lcom/google/protobuf/t1$for$do;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/google/protobuf/t1$for$do;->for(J)Lcom/google/protobuf/t1$for$do;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/protobuf/t1$for$do;->else()Lcom/google/protobuf/t1$for;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/t1$if;->const(ILcom/google/protobuf/t1$for;)Lcom/google/protobuf/t1$if;

    return-void
.end method

.method public strictfp(Ljava/lang/Object;Lcom/google/protobuf/t1$if;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/protobuf/GeneratedMessageV3;

    invoke-virtual {p2}, Lcom/google/protobuf/t1$if;->new()Lcom/google/protobuf/t1;

    move-result-object p2

    iput-object p2, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    return-void
.end method

.method public bridge synthetic super(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/google/protobuf/t1$if;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/w1;->strictfp(Ljava/lang/Object;Lcom/google/protobuf/t1$if;)V

    return-void
.end method

.method public switch(Lcom/google/protobuf/t1$if;ILcom/google/protobuf/t1;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/t1$for;->return()Lcom/google/protobuf/t1$for$do;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/protobuf/t1$for$do;->new(Lcom/google/protobuf/t1;)Lcom/google/protobuf/t1$for$do;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/protobuf/t1$for$do;->else()Lcom/google/protobuf/t1$for;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/t1$if;->const(ILcom/google/protobuf/t1$for;)Lcom/google/protobuf/t1$if;

    return-void
.end method

.method public bridge synthetic this(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/protobuf/t1;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/w1;->private(Lcom/google/protobuf/t1;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic throw(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/google/protobuf/t1;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/w1;->volatile(Ljava/lang/Object;Lcom/google/protobuf/t1;)V

    return-void
.end method

.method public throws(Lcom/google/protobuf/t1$if;ILcom/google/protobuf/ByteString;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/t1$for;->return()Lcom/google/protobuf/t1$for$do;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/protobuf/t1$for$do;->try(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/t1$for$do;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/protobuf/t1$for$do;->else()Lcom/google/protobuf/t1$for;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/t1$if;->const(ILcom/google/protobuf/t1$for;)Lcom/google/protobuf/t1$if;

    return-void
.end method

.method public transient(Lcom/google/protobuf/t1;Lcom/google/protobuf/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Lcom/google/protobuf/t1;->native(Lcom/google/protobuf/Writer;)V

    return-void
.end method

.method public bridge synthetic try(Ljava/lang/Object;IJ)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/protobuf/t1$if;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/w1;->default(Lcom/google/protobuf/t1$if;IJ)V

    return-void
.end method

.method public volatile(Ljava/lang/Object;Lcom/google/protobuf/t1;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/protobuf/GeneratedMessageV3;

    iput-object p2, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/t1;

    return-void
.end method

.method public while(Lcom/google/protobuf/Reader;)Z
    .locals 0

    .line 1
    invoke-interface {p1}, Lcom/google/protobuf/Reader;->shouldDiscardUnknownFields()Z

    move-result p1

    return p1
.end method
