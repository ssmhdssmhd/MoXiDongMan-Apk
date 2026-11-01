.class Lfreemarker/ext/jsp/TaglibFactory$import;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/jsp/TaglibFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "import"
.end annotation


# instance fields
.field private final do:Ljava/net/URL;

.field private final if:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$import;->do:Ljava/net/URL;

    .line 3
    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/ext/jsp/TaglibFactory$import;->if:Ljava/lang/String;

    return-void
.end method

.method public static synthetic do(Lfreemarker/ext/jsp/TaglibFactory$import;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lfreemarker/ext/jsp/TaglibFactory$import;->if:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lfreemarker/ext/jsp/TaglibFactory$import;->if()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lfreemarker/ext/jsp/TaglibFactory$import;

    invoke-virtual {p1}, Lfreemarker/ext/jsp/TaglibFactory$import;->if()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 2
    :cond_2
    iget-object v1, p0, Lfreemarker/ext/jsp/TaglibFactory$import;->if:Ljava/lang/String;

    check-cast p1, Lfreemarker/ext/jsp/TaglibFactory$import;

    iget-object p1, p1, Lfreemarker/ext/jsp/TaglibFactory$import;->if:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v0

    return p1
.end method

.method public for()Ljava/net/URL;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$import;->do:Ljava/net/URL;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$import;->if:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public if()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/jsp/TaglibFactory$import;->if:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "URLWithExternalForm("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lfreemarker/ext/jsp/TaglibFactory$import;->if:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
