.class Lfreemarker/ext/util/do$try;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/util/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "try"
.end annotation


# instance fields
.field public do:I

.field public for:Ljava/lang/Object;

.field public if:Ljava/lang/Object;

.field public new:Lfreemarker/ext/util/do$try;


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Lfreemarker/ext/util/do$try;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lfreemarker/ext/util/do$try;->do:I

    .line 3
    iput-object p2, p0, Lfreemarker/ext/util/do$try;->if:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lfreemarker/ext/util/do$try;->for:Ljava/lang/Object;

    .line 5
    iput-object p4, p0, Lfreemarker/ext/util/do$try;->new:Lfreemarker/ext/util/do$try;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance v0, Lfreemarker/ext/util/do$try;

    iget v1, p0, Lfreemarker/ext/util/do$try;->do:I

    iget-object v2, p0, Lfreemarker/ext/util/do$try;->if:Ljava/lang/Object;

    iget-object v3, p0, Lfreemarker/ext/util/do$try;->for:Ljava/lang/Object;

    iget-object v4, p0, Lfreemarker/ext/util/do$try;->new:Lfreemarker/ext/util/do$try;

    if-nez v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v4}, Lfreemarker/ext/util/do$try;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfreemarker/ext/util/do$try;

    :goto_0
    invoke-direct {v0, v1, v2, v3, v4}, Lfreemarker/ext/util/do$try;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lfreemarker/ext/util/do$try;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 3
    iget-object v0, p0, Lfreemarker/ext/util/do$try;->if:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lfreemarker/ext/util/do$try;->for:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 4
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_0
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/util/do$try;->if:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/util/do$try;->for:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lfreemarker/ext/util/do$try;->do:I

    iget-object v1, p0, Lfreemarker/ext/util/do$try;->for:Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/util/do$try;->for:Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lfreemarker/ext/util/do$try;->for:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lfreemarker/ext/util/do$try;->if:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lfreemarker/ext/util/do$try;->for:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
