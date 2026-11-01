.class Lfreemarker/ext/util/do$do;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/ext/util/do;->keySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lfreemarker/ext/util/do;


# direct methods
.method public constructor <init>(Lfreemarker/ext/util/do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/ext/util/do$do;->do:Lfreemarker/ext/util/do;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/util/do$do;->do:Lfreemarker/ext/util/do;

    invoke-virtual {v0}, Lfreemarker/ext/util/do;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/util/do$do;->do:Lfreemarker/ext/util/do;

    invoke-virtual {v0, p1}, Lfreemarker/ext/util/do;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/ext/util/do$do;->do:Lfreemarker/ext/util/do;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lfreemarker/ext/util/do;->access$000(Lfreemarker/ext/util/do;I)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/ext/util/do$do;->do:Lfreemarker/ext/util/do;

    invoke-static {v0}, Lfreemarker/ext/util/do;->access$100(Lfreemarker/ext/util/do;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lfreemarker/ext/util/do$do;->do:Lfreemarker/ext/util/do;

    invoke-virtual {v1, p1}, Lfreemarker/ext/util/do;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Lfreemarker/ext/util/do$do;->do:Lfreemarker/ext/util/do;

    invoke-static {p1}, Lfreemarker/ext/util/do;->access$100(Lfreemarker/ext/util/do;)I

    move-result p1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/util/do$do;->do:Lfreemarker/ext/util/do;

    invoke-static {v0}, Lfreemarker/ext/util/do;->access$100(Lfreemarker/ext/util/do;)I

    move-result v0

    return v0
.end method
