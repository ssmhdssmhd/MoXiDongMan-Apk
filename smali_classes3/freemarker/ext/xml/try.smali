.class public Lfreemarker/ext/xml/try;
.super Lfreemarker/ext/xml/do;
.source "SourceFile"

# interfaces
.implements Lorg/jaxen/NamespaceContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/ext/xml/do;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-super {p0}, Lfreemarker/ext/xml/do;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic exec(Ljava/util/List;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lfreemarker/ext/xml/do;->exec(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic new(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lfreemarker/ext/xml/do;->new(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
