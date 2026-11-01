.class final Lcom/jayway/jsonpath/internal/PathRef$1;
.super Lcom/jayway/jsonpath/internal/PathRef;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jayway/jsonpath/internal/PathRef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/jayway/jsonpath/internal/PathRef;-><init>(Ljava/lang/Object;Lcom/jayway/jsonpath/internal/PathRef$1;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/jayway/jsonpath/internal/PathRef;

    invoke-super {p0, p1}, Lcom/jayway/jsonpath/internal/PathRef;->compareTo(Lcom/jayway/jsonpath/internal/PathRef;)I

    move-result p1

    return p1
.end method

.method public convert(Lcom/jayway/jsonpath/MapFunction;Lcom/jayway/jsonpath/Configuration;)V
    .locals 0

    return-void
.end method

.method public delete(Lcom/jayway/jsonpath/Configuration;)V
    .locals 0

    return-void
.end method

.method public getAccessor()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;)V
    .locals 0

    return-void
.end method

.method public renameKey(Ljava/lang/String;Ljava/lang/String;Lcom/jayway/jsonpath/Configuration;)V
    .locals 0

    return-void
.end method

.method public set(Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;)V
    .locals 0

    return-void
.end method
