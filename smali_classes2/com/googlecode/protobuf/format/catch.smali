.class public Lcom/googlecode/protobuf/format/catch;
.super Lcom/googlecode/protobuf/format/goto;
.source "SourceFile"


# static fields
.field private static final case:Ljava/lang/String; = "type"

.field private static final else:Ljava/lang/String; = "unknown-field"

.field private static final goto:Ljava/lang/String; = "index"

.field private static final new:Ljava/lang/String; = "message"

.field public static final synthetic this:Z = false

.field private static final try:Ljava/lang/String; = "extension"


# instance fields
.field private for:Ljavax/xml/stream/XMLInputFactory;

.field private if:Ljavax/xml/stream/XMLOutputFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/googlecode/protobuf/format/goto;-><init>()V

    .line 2
    invoke-static {}, Ljavax/xml/stream/XMLOutputFactory;->newFactory()Ljavax/xml/stream/XMLOutputFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/protobuf/format/catch;->if:Ljavax/xml/stream/XMLOutputFactory;

    .line 3
    invoke-static {}, Ljavax/xml/stream/XMLInputFactory;->newFactory()Ljavax/xml/stream/XMLInputFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/protobuf/format/catch;->for:Ljavax/xml/stream/XMLInputFactory;

    return-void
.end method

.method private default(Ljava/lang/String;Ljava/lang/String;Ljavax/xml/stream/XMLStreamWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    const-string v0, "unknown-field"

    .line 1
    invoke-interface {p3, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;)V

    const-string v0, "index"

    .line 2
    invoke-interface {p3, v0, p1}, Ljavax/xml/stream/XMLStreamWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-interface {p3, p2}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    .line 4
    invoke-interface {p3}, Ljavax/xml/stream/XMLStreamWriter;->writeEndElement()V

    return-void
.end method

.method private final(Lcom/google/protobuf/Message$Builder;Lcom/google/protobuf/Descriptors$else;Lcom/google/protobuf/protected$for;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    if-nez p3, :cond_0

    .line 1
    invoke-interface {p1, p2}, Lcom/google/protobuf/Message$Builder;->newBuilderForField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/Message$Builder;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p3, Lcom/google/protobuf/protected$for;->if:Lcom/google/protobuf/Message;

    invoke-interface {p1}, Lcom/google/protobuf/Message;->newBuilderForType()Lcom/google/protobuf/Message$Builder;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private static(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;Ljavax/xml/stream/XMLStreamWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/googlecode/protobuf/format/catch$do;->do:[I

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->static()Lcom/google/protobuf/Descriptors$else$if;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    check-cast p2, Lcom/google/protobuf/Message;

    invoke-virtual {p0, p2, p3}, Lcom/googlecode/protobuf/format/catch;->switch(Lcom/google/protobuf/Message;Ljavax/xml/stream/XMLStreamWriter;)V

    goto :goto_0

    .line 3
    :pswitch_1
    check-cast p2, Lcom/google/protobuf/Descriptors$case;

    invoke-virtual {p2}, Lcom/google/protobuf/Descriptors$case;->for()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :pswitch_2
    check-cast p2, Lcom/google/protobuf/ByteString;

    invoke-static {p2}, Landroid/support/v4/i62;->if(Lcom/google/protobuf/ByteString;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :pswitch_3
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Landroid/support/v4/i62;->public(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :pswitch_4
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Landroid/support/v4/i62;->native(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :pswitch_5
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private super(Ljava/lang/String;Ljavax/xml/stream/XMLEventReader;Ljavax/xml/stream/events/XMLEvent;Lcom/google/protobuf/protected;Lcom/google/protobuf/t1$if;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 1
    invoke-interface {p3}, Ljavax/xml/stream/events/XMLEvent;->isStartElement()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 2
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljavax/xml/stream/XMLEventReader;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 3
    invoke-interface {p2}, Ljavax/xml/stream/XMLEventReader;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    move-result-object p3

    .line 4
    invoke-interface {p3}, Ljavax/xml/stream/events/XMLEvent;->isEndElement()Z

    move-result p4

    if-eqz p4, :cond_1

    add-int/lit8 p1, p1, -0x1

    if-gtz p1, :cond_0

    .line 5
    invoke-interface {p2}, Ljavax/xml/stream/XMLEventReader;->peek()Ljavax/xml/stream/events/XMLEvent;

    move-result-object p3

    invoke-interface {p3}, Ljavax/xml/stream/events/XMLEvent;->isEndElement()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_1

    .line 6
    :cond_1
    invoke-interface {p3}, Ljavax/xml/stream/events/XMLEvent;->isStartElement()Z

    move-result p3

    if-eqz p3, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 7
    :cond_2
    invoke-interface {p3}, Ljavax/xml/stream/events/XMLEvent;->isCharacters()Z

    :cond_3
    :goto_1
    return-void
.end method

.method private throw(Ljavax/xml/stream/XMLEventReader;Ljavax/xml/stream/events/XMLEvent;Lcom/google/protobuf/protected;Lcom/google/protobuf/Message$Builder;Lcom/google/protobuf/Descriptors$else;Lcom/google/protobuf/protected$for;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p4, p5, p6}, Lcom/googlecode/protobuf/format/catch;->final(Lcom/google/protobuf/Message$Builder;Lcom/google/protobuf/Descriptors$else;Lcom/google/protobuf/protected$for;)Lcom/google/protobuf/Message$Builder;

    move-result-object p4

    const/4 p5, 0x0

    .line 2
    :cond_0
    invoke-interface {p2}, Ljavax/xml/stream/events/XMLEvent;->isStartElement()Z

    move-result p6

    if-eqz p6, :cond_3

    add-int/lit8 p5, p5, 0x1

    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/googlecode/protobuf/format/catch;->native(Ljavax/xml/stream/XMLEventReader;Ljavax/xml/stream/events/XMLEvent;Lcom/google/protobuf/protected;Lcom/google/protobuf/Message$Builder;)V

    .line 4
    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->nextTag()Ljavax/xml/stream/events/XMLEvent;

    move-result-object p2

    .line 5
    invoke-interface {p2}, Ljavax/xml/stream/events/XMLEvent;->isEndElement()Z

    move-result p6

    if-eqz p6, :cond_1

    add-int/lit8 p5, p5, -0x1

    if-gtz p5, :cond_2

    .line 6
    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->peek()Ljavax/xml/stream/events/XMLEvent;

    move-result-object p2

    invoke-interface {p2}, Ljavax/xml/stream/events/XMLEvent;->isEndElement()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    .line 7
    :cond_1
    invoke-interface {p2}, Ljavax/xml/stream/events/XMLEvent;->isStartElement()Z

    move-result p2

    if-eqz p2, :cond_2

    add-int/lit8 p5, p5, 0x1

    .line 8
    :cond_2
    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->nextTag()Ljavax/xml/stream/events/XMLEvent;

    move-result-object p2

    if-nez p2, :cond_0

    .line 9
    :cond_3
    :goto_0
    invoke-interface {p4}, Lcom/google/protobuf/Message$Builder;->build()Lcom/google/protobuf/Message;

    move-result-object p1

    return-object p1
.end method

.method private throws(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;Ljavax/xml/stream/XMLStreamWriter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->extends()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "extension"

    .line 2
    invoke-interface {p3, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->class()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$if;->native()Lcom/google/protobuf/DescriptorProtos$catch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$catch;->getMessageSetWireFormat()Z

    move-result v0

    const-string v1, "type"

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->static()Lcom/google/protobuf/Descriptors$else$if;

    move-result-object v0

    sget-object v2, Lcom/google/protobuf/Descriptors$else$if;->MESSAGE:Lcom/google/protobuf/Descriptors$else$if;

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->package()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->super()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->native()Lcom/google/protobuf/Descriptors$if;

    move-result-object v2

    if-ne v0, v2, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->native()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$if;->if()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v1, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->if()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v1, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->static()Lcom/google/protobuf/Descriptors$else$if;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$else$if;->GROUP:Lcom/google/protobuf/Descriptors$else$if;

    if-ne v0, v1, :cond_2

    .line 9
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->native()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$if;->for()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->for()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;)V

    .line 11
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/googlecode/protobuf/format/catch;->static(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;Ljavax/xml/stream/XMLStreamWriter;)V

    .line 12
    invoke-interface {p3}, Ljavax/xml/stream/XMLStreamWriter;->writeEndElement()V

    return-void
.end method

.method private while(Ljavax/xml/stream/XMLEventReader;Lcom/google/protobuf/Descriptors$else;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/4 p1, 0x0

    if-nez p3, :cond_0

    return-object p1

    .line 1
    :cond_0
    sget-object v0, Lcom/googlecode/protobuf/format/catch$do;->do:[I

    invoke-virtual {p2}, Lcom/google/protobuf/Descriptors$else;->static()Lcom/google/protobuf/Descriptors$else$if;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    move-object p3, p1

    goto/16 :goto_0

    .line 2
    :pswitch_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Can\'t get here."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :pswitch_1
    invoke-virtual {p2}, Lcom/google/protobuf/Descriptors$else;->final()Lcom/google/protobuf/Descriptors$try;

    move-result-object p1

    .line 4
    invoke-static {p3}, Landroid/support/v4/i62;->for(Ljava/lang/String;)Z

    move-result p2

    const-string v0, "Enum type \""

    if-eqz p2, :cond_2

    .line 5
    invoke-static {p3}, Landroid/support/v4/i62;->this(Ljava/lang/String;)I

    move-result p2

    .line 6
    invoke-virtual {p1, p2}, Lcom/google/protobuf/Descriptors$try;->else(I)Lcom/google/protobuf/Descriptors$case;

    move-result-object p3

    if-eqz p3, :cond_1

    goto/16 :goto_0

    .line 7
    :cond_1
    new-instance p3, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$try;->if()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" has no value with number "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 9
    :cond_2
    invoke-virtual {p1, p3}, Lcom/google/protobuf/Descriptors$try;->case(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$case;

    move-result-object p2

    if-eqz p2, :cond_3

    move-object p3, p2

    goto :goto_0

    .line 10
    :cond_3
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$try;->if()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" has no value named \""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 12
    :pswitch_2
    invoke-static {p3}, Landroid/support/v4/i62;->while(Ljava/lang/CharSequence;)Lcom/google/protobuf/ByteString;

    move-result-object p3

    goto :goto_0

    .line 13
    :pswitch_3
    invoke-static {p3}, Landroid/support/v4/i62;->const(Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    goto :goto_0

    .line 14
    :pswitch_4
    invoke-static {p3}, Landroid/support/v4/i62;->class(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    goto :goto_0

    .line 15
    :pswitch_5
    invoke-static {p3}, Landroid/support/v4/i62;->case(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    goto :goto_0

    .line 16
    :pswitch_6
    invoke-static {p3}, Landroid/support/v4/i62;->else(Ljava/lang/String;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    goto :goto_0

    .line 17
    :pswitch_7
    invoke-static {p3}, Landroid/support/v4/i62;->goto(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    goto :goto_0

    .line 18
    :pswitch_8
    invoke-static {p3}, Landroid/support/v4/i62;->break(Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    goto :goto_0

    .line 19
    :pswitch_9
    invoke-static {p3}, Landroid/support/v4/i62;->this(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    :goto_0
    :pswitch_a
    return-object p3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_a
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public const(Ljava/io/OutputStream;)Ljavax/xml/stream/XMLStreamWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/googlecode/protobuf/format/catch;->if:Ljavax/xml/stream/XMLOutputFactory;

    invoke-virtual {v0, p1}, Ljavax/xml/stream/XMLOutputFactory;->createXMLStreamWriter(Ljava/io/OutputStream;)Ljavax/xml/stream/XMLStreamWriter;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamWriter;->writeStartDocument()V

    return-object p1
.end method

.method public else(Lcom/google/protobuf/Message;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/googlecode/protobuf/format/catch;->const(Ljava/io/OutputStream;)Ljavax/xml/stream/XMLStreamWriter;

    move-result-object p2

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/googlecode/protobuf/format/catch;->public(Lcom/google/protobuf/Message;Ljavax/xml/stream/XMLStreamWriter;)V

    .line 3
    invoke-interface {p2}, Ljavax/xml/stream/XMLStreamWriter;->writeEndDocument()V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 4
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public extends(Lcom/google/protobuf/t1;Ljavax/xml/stream/XMLStreamWriter;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/t1;->if()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/t1$for;

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {v1}, Lcom/google/protobuf/t1$for;->public()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 5
    invoke-static {v3, v4}, Landroid/support/v4/i62;->public(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3, p2}, Lcom/googlecode/protobuf/format/catch;->default(Ljava/lang/String;Ljava/lang/String;Ljavax/xml/stream/XMLStreamWriter;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/t1$for;->const()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-array v5, v5, [Ljava/lang/Object;

    .line 7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v4

    const-string v3, "0x%08x"

    invoke-static {v6, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3, p2}, Lcom/googlecode/protobuf/format/catch;->default(Ljava/lang/String;Ljava/lang/String;Ljavax/xml/stream/XMLStreamWriter;)V

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {v1}, Lcom/google/protobuf/t1$for;->final()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    new-array v3, v5, [Ljava/lang/Object;

    .line 9
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v3, v4

    const-string v7, "0x%016x"

    invoke-static {v6, v7, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3, p2}, Lcom/googlecode/protobuf/format/catch;->default(Ljava/lang/String;Ljava/lang/String;Ljavax/xml/stream/XMLStreamWriter;)V

    goto :goto_2

    .line 10
    :cond_3
    invoke-virtual {v1}, Lcom/google/protobuf/t1$for;->while()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/ByteString;

    .line 11
    invoke-static {v3}, Landroid/support/v4/i62;->if(Lcom/google/protobuf/ByteString;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3, p2}, Lcom/googlecode/protobuf/format/catch;->default(Ljava/lang/String;Ljava/lang/String;Ljavax/xml/stream/XMLStreamWriter;)V

    goto :goto_3

    .line 12
    :cond_4
    invoke-virtual {v1}, Lcom/google/protobuf/t1$for;->super()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/t1;

    const-string v3, "unknown-field"

    .line 13
    invoke-interface {p2, v3}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;)V

    const-string v3, "index"

    .line 14
    invoke-interface {p2, v3, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0, v2, p2}, Lcom/googlecode/protobuf/format/catch;->extends(Lcom/google/protobuf/t1;Ljavax/xml/stream/XMLStreamWriter;)V

    .line 16
    invoke-interface {p2}, Ljavax/xml/stream/XMLStreamWriter;->writeEndElement()V

    goto :goto_4

    :cond_5
    return-void
.end method

.method public import(Ljavax/xml/stream/XMLEventReader;Lcom/google/protobuf/protected;Lcom/google/protobuf/Message$Builder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->nextTag()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->isStartElement()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->asStartElement()Ljavax/xml/stream/events/StartElement;

    move-result-object v0

    invoke-interface {v0}, Ljavax/xml/stream/events/StartElement;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    .line 4
    :goto_0
    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->peek()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->isEndDocument()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->nextTag()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->isStartElement()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/googlecode/protobuf/format/catch;->native(Ljavax/xml/stream/XMLEventReader;Ljavax/xml/stream/events/XMLEvent;Lcom/google/protobuf/protected;Lcom/google/protobuf/Message$Builder;)V

    .line 8
    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->nextTag()Ljavax/xml/stream/events/XMLEvent;

    goto :goto_0

    .line 9
    :cond_0
    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->isEndElement()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Expecting the end of the stream, but there seems to be more data!  Check the input for a valid XML format."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception p1

    .line 11
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    throw p2

    :goto_3
    goto :goto_2
.end method

.method public native(Ljavax/xml/stream/XMLEventReader;Ljavax/xml/stream/events/XMLEvent;Lcom/google/protobuf/protected;Lcom/google/protobuf/Message$Builder;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 1
    invoke-interface {p4}, Lcom/google/protobuf/Message$Builder;->getDescriptorForType()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    .line 2
    invoke-interface {p2}, Ljavax/xml/stream/events/XMLEvent;->asStartElement()Ljavax/xml/stream/events/StartElement;

    move-result-object v1

    invoke-interface {v1}, Ljavax/xml/stream/events/StartElement;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v8

    const/4 v9, 0x0

    if-eqz v8, :cond_8

    const-string v2, "extension"

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    invoke-interface {p2}, Ljavax/xml/stream/events/XMLEvent;->asStartElement()Ljavax/xml/stream/events/StartElement;

    move-result-object p2

    new-instance v2, Ljavax/xml/namespace/QName;

    const-string v3, "type"

    invoke-direct {v2, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-interface {p2, v2}, Ljavax/xml/stream/events/StartElement;->getAttributeByName(Ljavax/xml/namespace/QName;)Ljavax/xml/stream/events/Attribute;

    move-result-object p2

    invoke-interface {p2}, Ljavax/xml/stream/events/Attribute;->getValue()Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-virtual {p3, p2}, Lcom/google/protobuf/protected;->final(Ljava/lang/String;)Lcom/google/protobuf/protected$for;

    move-result-object p2

    const-string v2, "Extension \""

    if-eqz p2, :cond_1

    .line 8
    iget-object v3, p2, Lcom/google/protobuf/protected$for;->do:Lcom/google/protobuf/Descriptors$else;

    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$else;->class()Lcom/google/protobuf/Descriptors$if;

    move-result-object v3

    if-ne v3, v0, :cond_0

    .line 9
    iget-object v0, p2, Lcom/google/protobuf/protected$for;->do:Lcom/google/protobuf/Descriptors$else;

    goto/16 :goto_2

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\" does not extend message type \""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$if;->if()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\"."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\" not found in the ExtensionRegistry."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_2
    invoke-virtual {v0, v1}, Lcom/google/protobuf/Descriptors$if;->this(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$else;

    move-result-object v2

    if-nez v2, :cond_3

    .line 14
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-virtual {v0, v2}, Lcom/google/protobuf/Descriptors$if;->this(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$else;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 16
    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$else;->static()Lcom/google/protobuf/Descriptors$else$if;

    move-result-object v3

    sget-object v4, Lcom/google/protobuf/Descriptors$else$if;->GROUP:Lcom/google/protobuf/Descriptors$else$if;

    if-eq v3, v4, :cond_3

    move-object v2, v9

    :cond_3
    if-eqz v2, :cond_4

    .line 17
    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$else;->static()Lcom/google/protobuf/Descriptors$else$if;

    move-result-object v3

    sget-object v4, Lcom/google/protobuf/Descriptors$else$if;->GROUP:Lcom/google/protobuf/Descriptors$else$if;

    if-ne v3, v4, :cond_4

    .line 18
    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$else;->native()Lcom/google/protobuf/Descriptors$if;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$if;->for()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 19
    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$else;->native()Lcom/google/protobuf/Descriptors$if;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$if;->if()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    move-object v2, v9

    :cond_4
    const-string v3, "unknown-field"

    .line 20
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 21
    invoke-interface {p2}, Ljavax/xml/stream/events/XMLEvent;->asStartElement()Ljavax/xml/stream/events/StartElement;

    move-result-object p2

    new-instance v3, Ljavax/xml/namespace/QName;

    const-string v4, "index"

    invoke-direct {v3, v4}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-interface {p2, v3}, Ljavax/xml/stream/events/StartElement;->getAttributeByName(Ljavax/xml/namespace/QName;)Ljavax/xml/stream/events/Attribute;

    move-result-object p2

    invoke-interface {p2}, Ljavax/xml/stream/events/Attribute;->getValue()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    move-object v3, p2

    goto :goto_0

    :cond_5
    move-object v3, v1

    :goto_0
    if-nez v2, :cond_6

    .line 23
    invoke-static {v3}, Landroid/support/v4/i62;->for(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 24
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/google/protobuf/Descriptors$if;->break(I)Lcom/google/protobuf/Descriptors$else;

    move-result-object p2

    move-object v0, p2

    goto :goto_1

    :cond_6
    move-object v0, v2

    :goto_1
    if-nez v0, :cond_7

    .line 25
    invoke-static {}, Lcom/google/protobuf/t1;->this()Lcom/google/protobuf/t1$if;

    move-result-object p2

    move-object v2, p0

    move-object v4, p1

    move-object v5, v8

    move-object v6, p3

    move-object v7, p2

    .line 26
    invoke-direct/range {v2 .. v7}, Lcom/googlecode/protobuf/format/catch;->super(Ljava/lang/String;Ljavax/xml/stream/XMLEventReader;Ljavax/xml/stream/events/XMLEvent;Lcom/google/protobuf/protected;Lcom/google/protobuf/t1$if;)V

    .line 27
    invoke-virtual {p2}, Lcom/google/protobuf/t1$if;->new()Lcom/google/protobuf/t1;

    move-result-object p2

    invoke-interface {p4, p2}, Lcom/google/protobuf/Message$Builder;->setUnknownFields(Lcom/google/protobuf/t1;)Lcom/google/protobuf/Message$Builder;

    :cond_7
    move-object p2, v9

    goto :goto_2

    :cond_8
    move-object p2, v9

    move-object v0, p2

    :goto_2
    if-eqz v0, :cond_d

    .line 28
    invoke-interface {v8}, Ljavax/xml/stream/events/XMLEvent;->isCharacters()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 29
    invoke-interface {v8}, Ljavax/xml/stream/events/XMLEvent;->asCharacters()Ljavax/xml/stream/events/Characters;

    move-result-object p2

    invoke-interface {p2}, Ljavax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/googlecode/protobuf/format/catch;->while(Ljavax/xml/stream/XMLEventReader;Lcom/google/protobuf/Descriptors$else;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_3

    .line 30
    :cond_9
    invoke-interface {v8}, Ljavax/xml/stream/events/XMLEvent;->isStartElement()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-interface {v8}, Ljavax/xml/stream/events/XMLEvent;->isEndElement()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 31
    :cond_a
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$else;->while()Lcom/google/protobuf/Descriptors$else$do;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/Descriptors$else$do;->MESSAGE:Lcom/google/protobuf/Descriptors$else$do;

    if-ne v1, v2, :cond_b

    move-object v2, p0

    move-object v3, p1

    move-object v4, v8

    move-object v5, p3

    move-object v6, p4

    move-object v7, v0

    move-object v8, p2

    .line 32
    invoke-direct/range {v2 .. v8}, Lcom/googlecode/protobuf/format/catch;->throw(Ljavax/xml/stream/XMLEventReader;Ljavax/xml/stream/events/XMLEvent;Lcom/google/protobuf/protected;Lcom/google/protobuf/Message$Builder;Lcom/google/protobuf/Descriptors$else;Lcom/google/protobuf/protected$for;)Ljava/lang/Object;

    move-result-object v9

    :cond_b
    :goto_3
    if-eqz v9, :cond_d

    .line 33
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$else;->isRepeated()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 34
    invoke-interface {p4, v0, v9}, Lcom/google/protobuf/Message$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;

    goto :goto_4

    .line 35
    :cond_c
    invoke-interface {p4, v0, v9}, Lcom/google/protobuf/Message$Builder;->setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;

    :cond_d
    :goto_4
    return-void
.end method

.method public new(Ljava/io/InputStream;Ljava/nio/charset/Charset;Lcom/google/protobuf/protected;Lcom/google/protobuf/Message$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p2, p0, Lcom/googlecode/protobuf/format/catch;->for:Ljavax/xml/stream/XMLInputFactory;

    invoke-virtual {p2, p1}, Ljavax/xml/stream/XMLInputFactory;->createXMLEventReader(Ljava/io/InputStream;)Ljavax/xml/stream/XMLEventReader;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1, p3, p4}, Lcom/googlecode/protobuf/format/catch;->import(Ljavax/xml/stream/XMLEventReader;Lcom/google/protobuf/protected;Lcom/google/protobuf/Message$Builder;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public public(Lcom/google/protobuf/Message;Ljavax/xml/stream/XMLStreamWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p1}, Lcom/google/protobuf/MessageOrBuilder;->getDescriptorForType()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$if;->for()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-interface {p2, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/googlecode/protobuf/format/catch;->switch(Lcom/google/protobuf/Message;Ljavax/xml/stream/XMLStreamWriter;)V

    .line 4
    invoke-interface {p2}, Ljavax/xml/stream/XMLStreamWriter;->writeEndElement()V

    .line 5
    invoke-interface {p2}, Ljavax/xml/stream/XMLStreamWriter;->flush()V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 6
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public return(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;Ljavax/xml/stream/XMLStreamWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/googlecode/protobuf/format/catch;->throws(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;Ljavax/xml/stream/XMLStreamWriter;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/googlecode/protobuf/format/catch;->throws(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;Ljavax/xml/stream/XMLStreamWriter;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 5
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method

.method public switch(Lcom/google/protobuf/Message;Ljavax/xml/stream/XMLStreamWriter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/protobuf/MessageOrBuilder;->getAllFields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$else;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1, p2}, Lcom/googlecode/protobuf/format/catch;->return(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;Ljavax/xml/stream/XMLStreamWriter;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Lcom/google/protobuf/MessageOrBuilder;->getUnknownFields()Lcom/google/protobuf/t1;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/googlecode/protobuf/format/catch;->extends(Lcom/google/protobuf/t1;Ljavax/xml/stream/XMLStreamWriter;)V

    return-void
.end method

.method public this(Lcom/google/protobuf/t1;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/googlecode/protobuf/format/catch;->const(Ljava/io/OutputStream;)Ljavax/xml/stream/XMLStreamWriter;

    move-result-object p2

    const-string p3, "message"

    .line 2
    invoke-interface {p2, p3}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/googlecode/protobuf/format/catch;->extends(Lcom/google/protobuf/t1;Ljavax/xml/stream/XMLStreamWriter;)V

    .line 4
    invoke-interface {p2}, Ljavax/xml/stream/XMLStreamWriter;->writeEndElement()V

    .line 5
    invoke-interface {p2}, Ljavax/xml/stream/XMLStreamWriter;->close()V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 6
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
