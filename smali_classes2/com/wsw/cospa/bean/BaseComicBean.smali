.class public interface abstract Lcom/wsw/cospa/bean/BaseComicBean;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getCoverHeader()Ljava/lang/String;
.end method

.method public abstract getNoteUrl()Ljava/lang/String;
.end method

.method public abstract getUrlHeader()Ljava/lang/String;
.end method

.method public abstract getVariable()Ljava/lang/String;
.end method

.method public abstract getVariableMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract putVariable(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setNoteUrl(Ljava/lang/String;)V
.end method

.method public abstract setVariable(Ljava/lang/String;)V
.end method
