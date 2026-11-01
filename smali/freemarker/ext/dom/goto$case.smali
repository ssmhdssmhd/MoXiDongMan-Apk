.class Lfreemarker/ext/dom/goto$case;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/EntityResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/dom/goto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "case"
.end annotation


# instance fields
.field private do:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lfreemarker/ext/dom/goto$case;->do:I

    return-void
.end method

.method public synthetic constructor <init>(Lfreemarker/ext/dom/goto$do;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lfreemarker/ext/dom/goto$case;-><init>()V

    return-void
.end method


# virtual methods
.method public do()I
    .locals 1

    .line 1
    iget v0, p0, Lfreemarker/ext/dom/goto$case;->do:I

    return v0
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lfreemarker/ext/dom/goto$case;->do:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfreemarker/ext/dom/goto$case;->do:I

    .line 2
    invoke-static {p2}, Lfreemarker/ext/dom/goto;->new(Ljava/lang/String;)Lfreemarker/template/static;

    move-result-object p2

    invoke-static {p1, p2}, Lfreemarker/ext/dom/goto;->if(Ljava/lang/String;Lfreemarker/template/static;)Lorg/xml/sax/InputSource;

    move-result-object p1

    return-object p1
.end method
