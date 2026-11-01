.class public final Lorg/chromium/net/UploadDataProviders;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/net/UploadDataProviders$for;,
        Lorg/chromium/net/UploadDataProviders$new;,
        Lorg/chromium/net/UploadDataProviders$FileChannelProvider;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do(Landroid/os/ParcelFileDescriptor;)Lorg/chromium/net/public;
    .locals 2

    .line 1
    new-instance v0, Lorg/chromium/net/UploadDataProviders$new;

    new-instance v1, Lorg/chromium/net/UploadDataProviders$if;

    invoke-direct {v1, p0}, Lorg/chromium/net/UploadDataProviders$if;-><init>(Landroid/os/ParcelFileDescriptor;)V

    const/4 p0, 0x0

    invoke-direct {v0, v1, p0}, Lorg/chromium/net/UploadDataProviders$new;-><init>(Lorg/chromium/net/UploadDataProviders$FileChannelProvider;Lorg/chromium/net/UploadDataProviders$do;)V

    return-object v0
.end method

.method public static for(Ljava/nio/ByteBuffer;)Lorg/chromium/net/public;
    .locals 2

    .line 1
    new-instance v0, Lorg/chromium/net/UploadDataProviders$for;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/net/UploadDataProviders$for;-><init>(Ljava/nio/ByteBuffer;Lorg/chromium/net/UploadDataProviders$do;)V

    return-object v0
.end method

.method public static if(Ljava/io/File;)Lorg/chromium/net/public;
    .locals 2

    .line 1
    new-instance v0, Lorg/chromium/net/UploadDataProviders$new;

    new-instance v1, Lorg/chromium/net/UploadDataProviders$do;

    invoke-direct {v1, p0}, Lorg/chromium/net/UploadDataProviders$do;-><init>(Ljava/io/File;)V

    const/4 p0, 0x0

    invoke-direct {v0, v1, p0}, Lorg/chromium/net/UploadDataProviders$new;-><init>(Lorg/chromium/net/UploadDataProviders$FileChannelProvider;Lorg/chromium/net/UploadDataProviders$do;)V

    return-object v0
.end method

.method public static new([B)Lorg/chromium/net/public;
    .locals 2

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/chromium/net/UploadDataProviders;->try([BII)Lorg/chromium/net/public;

    move-result-object p0

    return-object p0
.end method

.method public static try([BII)Lorg/chromium/net/public;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/net/UploadDataProviders$for;

    invoke-static {p0, p1, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v0, p0, p1}, Lorg/chromium/net/UploadDataProviders$for;-><init>(Ljava/nio/ByteBuffer;Lorg/chromium/net/UploadDataProviders$do;)V

    return-object v0
.end method
