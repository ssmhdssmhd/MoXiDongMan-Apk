.class public interface abstract Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelChapterResponseOuterClass$NovelChapterVolumeResponseOrBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelChapterResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NovelChapterVolumeResponseOrBuilder"
.end annotation


# virtual methods
.method public abstract getChapters(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelChapterResponseOuterClass$NovelChapterItemResponse;
.end method

.method public abstract getChaptersCount()I
.end method

.method public abstract getChaptersList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelChapterResponseOuterClass$NovelChapterItemResponse;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getChaptersOrBuilder(I)Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelChapterResponseOuterClass$NovelChapterItemResponseOrBuilder;
.end method

.method public abstract getChaptersOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/wsw/cospa/utils/analyzeUrl/Utils/protobuf/dmzj/novel/NovelChapterResponseOuterClass$NovelChapterItemResponseOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVolumeId()I
.end method

.method public abstract getVolumeName()Ljava/lang/String;
.end method

.method public abstract getVolumeNameBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getVolumeOrder()I
.end method
