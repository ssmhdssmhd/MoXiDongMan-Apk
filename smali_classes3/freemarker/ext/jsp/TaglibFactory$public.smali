.class Lfreemarker/ext/jsp/TaglibFactory$public;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/jsp/TaglibFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "public"
.end annotation


# static fields
.field private static final case:Ljava/lang/String; = "taglib"

.field private static final else:Ljava/lang/String; = "taglib-location"

.field private static final goto:Ljava/lang/String; = "taglib-uri"


# instance fields
.field private do:Ljava/lang/StringBuilder;

.field private for:Ljava/lang/String;

.field private if:Ljava/lang/String;

.field private new:Lorg/xml/sax/Locator;

.field public final synthetic try:Lfreemarker/ext/jsp/TaglibFactory;


# direct methods
.method private constructor <init>(Lfreemarker/ext/jsp/TaglibFactory;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$public;->try:Lfreemarker/ext/jsp/TaglibFactory;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lfreemarker/ext/jsp/TaglibFactory;Lfreemarker/ext/jsp/TaglibFactory$do;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lfreemarker/ext/jsp/TaglibFactory$public;-><init>(Lfreemarker/ext/jsp/TaglibFactory;)V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$public;->do:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/ext/jsp/TaglibFactory$while;
        }
    .end annotation

    const-string p1, "taglib-uri"

    .line 1
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$public;->do:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$public;->if:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lfreemarker/ext/jsp/TaglibFactory$public;->do:Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_0
    const-string p1, "taglib-location"

    .line 4
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 5
    iget-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$public;->do:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$public;->for:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    :try_start_0
    iget-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$public;->for:Ljava/lang/String;

    invoke-static {p1}, Lfreemarker/ext/jsp/TaglibFactory;->try(Ljava/lang/String;)I

    move-result p1

    const/4 p3, 0x2

    if-ne p1, p3, :cond_1

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "/WEB-INF/"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lfreemarker/ext/jsp/TaglibFactory$public;->for:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$public;->for:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :cond_1
    iput-object p2, p0, Lfreemarker/ext/jsp/TaglibFactory$public;->do:Ljava/lang/StringBuilder;

    goto :goto_1

    :catch_0
    move-exception p1

    .line 10
    new-instance p2, Lfreemarker/ext/jsp/TaglibFactory$while;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to detect URI type for: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$public;->for:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$public;->new:Lorg/xml/sax/Locator;

    invoke-direct {p2, p3, v0, p1}, Lfreemarker/ext/jsp/TaglibFactory$while;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Throwable;)V

    throw p2

    .line 11
    :cond_2
    new-instance p1, Lfreemarker/ext/jsp/TaglibFactory$while;

    iget-object p2, p0, Lfreemarker/ext/jsp/TaglibFactory$public;->new:Lorg/xml/sax/Locator;

    const-string p3, "Required \"taglib-uri\" element was missing or empty"

    invoke-direct {p1, p3, p2}, Lfreemarker/ext/jsp/TaglibFactory$while;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw p1

    :cond_3
    const-string p1, "taglib"

    .line 12
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 13
    iget-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$public;->try:Lfreemarker/ext/jsp/TaglibFactory;

    iget-object p3, p0, Lfreemarker/ext/jsp/TaglibFactory$public;->for:Ljava/lang/String;

    .line 14
    invoke-static {p3}, Lfreemarker/ext/jsp/TaglibFactory;->case(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    new-instance p3, Lfreemarker/ext/jsp/TaglibFactory$catch;

    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$public;->try:Lfreemarker/ext/jsp/TaglibFactory;

    iget-object v1, p0, Lfreemarker/ext/jsp/TaglibFactory$public;->for:Ljava/lang/String;

    const-string v2, "/META-INF/taglib.tld"

    invoke-direct {p3, v0, v1, v2, p2}, Lfreemarker/ext/jsp/TaglibFactory$catch;-><init>(Lfreemarker/ext/jsp/TaglibFactory;Ljava/lang/String;Ljava/lang/String;Lfreemarker/ext/jsp/TaglibFactory$do;)V

    goto :goto_0

    :cond_4
    new-instance p3, Lfreemarker/ext/jsp/TaglibFactory$class;

    iget-object p2, p0, Lfreemarker/ext/jsp/TaglibFactory$public;->try:Lfreemarker/ext/jsp/TaglibFactory;

    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$public;->for:Ljava/lang/String;

    invoke-direct {p3, p2, v0}, Lfreemarker/ext/jsp/TaglibFactory$class;-><init>(Lfreemarker/ext/jsp/TaglibFactory;Ljava/lang/String;)V

    :goto_0
    iget-object p2, p0, Lfreemarker/ext/jsp/TaglibFactory$public;->if:Ljava/lang/String;

    .line 15
    invoke-static {p1, p3, p2}, Lfreemarker/ext/jsp/TaglibFactory;->else(Lfreemarker/ext/jsp/TaglibFactory;Lfreemarker/ext/jsp/TaglibFactory$TldLocation;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$public;->new:Lorg/xml/sax/Locator;

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0

    const-string p1, "taglib-uri"

    .line 1
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "taglib-location"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$public;->do:Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method
