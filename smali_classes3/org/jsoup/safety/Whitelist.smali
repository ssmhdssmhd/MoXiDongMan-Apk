.class public Lorg/jsoup/safety/Whitelist;
.super Lorg/jsoup/safety/Safelist;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/jsoup/safety/Safelist;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/jsoup/safety/Safelist;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/jsoup/safety/Safelist;-><init>(Lorg/jsoup/safety/Safelist;)V

    return-void
.end method

.method public static basic()Lorg/jsoup/safety/Whitelist;
    .locals 2

    .line 1
    new-instance v0, Lorg/jsoup/safety/Whitelist;

    invoke-static {}, Lorg/jsoup/safety/Safelist;->basic()Lorg/jsoup/safety/Safelist;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jsoup/safety/Whitelist;-><init>(Lorg/jsoup/safety/Safelist;)V

    return-object v0
.end method

.method public static basicWithImages()Lorg/jsoup/safety/Whitelist;
    .locals 2

    .line 1
    new-instance v0, Lorg/jsoup/safety/Whitelist;

    invoke-static {}, Lorg/jsoup/safety/Safelist;->basicWithImages()Lorg/jsoup/safety/Safelist;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jsoup/safety/Whitelist;-><init>(Lorg/jsoup/safety/Safelist;)V

    return-object v0
.end method

.method public static none()Lorg/jsoup/safety/Whitelist;
    .locals 2

    .line 1
    new-instance v0, Lorg/jsoup/safety/Whitelist;

    invoke-static {}, Lorg/jsoup/safety/Safelist;->none()Lorg/jsoup/safety/Safelist;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jsoup/safety/Whitelist;-><init>(Lorg/jsoup/safety/Safelist;)V

    return-object v0
.end method

.method public static relaxed()Lorg/jsoup/safety/Whitelist;
    .locals 2

    .line 1
    new-instance v0, Lorg/jsoup/safety/Whitelist;

    invoke-static {}, Lorg/jsoup/safety/Safelist;->relaxed()Lorg/jsoup/safety/Safelist;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jsoup/safety/Whitelist;-><init>(Lorg/jsoup/safety/Safelist;)V

    return-object v0
.end method

.method public static simpleText()Lorg/jsoup/safety/Whitelist;
    .locals 2

    .line 1
    new-instance v0, Lorg/jsoup/safety/Whitelist;

    invoke-static {}, Lorg/jsoup/safety/Safelist;->simpleText()Lorg/jsoup/safety/Safelist;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jsoup/safety/Whitelist;-><init>(Lorg/jsoup/safety/Safelist;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/safety/Whitelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object p1

    return-object p1
.end method

.method public varargs addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lorg/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    return-object p0
.end method

.method public bridge synthetic addEnforcedAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/safety/Safelist;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/jsoup/safety/Whitelist;->addEnforcedAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object p1

    return-object p1
.end method

.method public addEnforcedAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2, p3}, Lorg/jsoup/safety/Safelist;->addEnforcedAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    return-object p0
.end method

.method public bridge synthetic addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/jsoup/safety/Whitelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object p1

    return-object p1
.end method

.method public varargs addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2, p3}, Lorg/jsoup/safety/Safelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    return-object p0
.end method

.method public bridge synthetic addTags([Ljava/lang/String;)Lorg/jsoup/safety/Safelist;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/jsoup/safety/Whitelist;->addTags([Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object p1

    return-object p1
.end method

.method public varargs addTags([Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lorg/jsoup/safety/Safelist;->addTags([Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    return-object p0
.end method

.method public getEnforcedAttributes(Ljava/lang/String;)Lorg/jsoup/nodes/Attributes;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/jsoup/safety/Safelist;->getEnforcedAttributes(Ljava/lang/String;)Lorg/jsoup/nodes/Attributes;

    move-result-object p1

    return-object p1
.end method

.method public isSafeAttribute(Ljava/lang/String;Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Attribute;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lorg/jsoup/safety/Safelist;->isSafeAttribute(Ljava/lang/String;Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Attribute;)Z

    move-result p1

    return p1
.end method

.method public isSafeTag(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/jsoup/safety/Safelist;->isSafeTag(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic preserveRelativeLinks(Z)Lorg/jsoup/safety/Safelist;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/jsoup/safety/Whitelist;->preserveRelativeLinks(Z)Lorg/jsoup/safety/Whitelist;

    move-result-object p1

    return-object p1
.end method

.method public preserveRelativeLinks(Z)Lorg/jsoup/safety/Whitelist;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lorg/jsoup/safety/Safelist;->preserveRelativeLinks(Z)Lorg/jsoup/safety/Safelist;

    return-object p0
.end method

.method public bridge synthetic removeAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/safety/Whitelist;->removeAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object p1

    return-object p1
.end method

.method public varargs removeAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lorg/jsoup/safety/Safelist;->removeAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    return-object p0
.end method

.method public bridge synthetic removeEnforcedAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/safety/Safelist;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/safety/Whitelist;->removeEnforcedAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object p1

    return-object p1
.end method

.method public removeEnforcedAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lorg/jsoup/safety/Safelist;->removeEnforcedAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    return-object p0
.end method

.method public bridge synthetic removeProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/jsoup/safety/Whitelist;->removeProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object p1

    return-object p1
.end method

.method public varargs removeProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2, p3}, Lorg/jsoup/safety/Safelist;->removeProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    return-object p0
.end method

.method public bridge synthetic removeTags([Ljava/lang/String;)Lorg/jsoup/safety/Safelist;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/jsoup/safety/Whitelist;->removeTags([Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;

    move-result-object p1

    return-object p1
.end method

.method public varargs removeTags([Ljava/lang/String;)Lorg/jsoup/safety/Whitelist;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lorg/jsoup/safety/Safelist;->removeTags([Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    return-object p0
.end method
