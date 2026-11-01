.class public abstract Lcom/bumptech/glide/load/resource/bitmap/try;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/bitmap/try$else;,
        Lcom/bumptech/glide/load/resource/bitmap/try$for;,
        Lcom/bumptech/glide/load/resource/bitmap/try$case;,
        Lcom/bumptech/glide/load/resource/bitmap/try$if;,
        Lcom/bumptech/glide/load/resource/bitmap/try$do;,
        Lcom/bumptech/glide/load/resource/bitmap/try$new;,
        Lcom/bumptech/glide/load/resource/bitmap/try$try;
    }
.end annotation


# static fields
.field public static final case:Lcom/bumptech/glide/load/resource/bitmap/try;

.field public static final do:Lcom/bumptech/glide/load/resource/bitmap/try;

.field public static final else:Lcom/bumptech/glide/load/resource/bitmap/try;

.field public static final for:Lcom/bumptech/glide/load/resource/bitmap/try;

.field public static final goto:Lcom/bumptech/glide/load/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Option<",
            "Lcom/bumptech/glide/load/resource/bitmap/try;",
            ">;"
        }
    .end annotation
.end field

.field public static final if:Lcom/bumptech/glide/load/resource/bitmap/try;

.field public static final new:Lcom/bumptech/glide/load/resource/bitmap/try;

.field public static final this:Z

.field public static final try:Lcom/bumptech/glide/load/resource/bitmap/try;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/try$do;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/try$do;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/try;->do:Lcom/bumptech/glide/load/resource/bitmap/try;

    .line 2
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/try$if;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/try$if;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/try;->if:Lcom/bumptech/glide/load/resource/bitmap/try;

    .line 3
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/try$try;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/try$try;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/try;->for:Lcom/bumptech/glide/load/resource/bitmap/try;

    .line 4
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/try$for;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/try$for;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/try;->new:Lcom/bumptech/glide/load/resource/bitmap/try;

    .line 5
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/try$new;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/try$new;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/try;->try:Lcom/bumptech/glide/load/resource/bitmap/try;

    .line 6
    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/try$case;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/bitmap/try$case;-><init>()V

    sput-object v1, Lcom/bumptech/glide/load/resource/bitmap/try;->case:Lcom/bumptech/glide/load/resource/bitmap/try;

    .line 7
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/try;->else:Lcom/bumptech/glide/load/resource/bitmap/try;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy"

    .line 8
    invoke-static {v1, v0}, Lcom/bumptech/glide/load/Option;->else(Ljava/lang/String;Ljava/lang/Object;)Lcom/bumptech/glide/load/Option;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/try;->goto:Lcom/bumptech/glide/load/Option;

    .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/bumptech/glide/load/resource/bitmap/try;->this:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract do(IIII)Lcom/bumptech/glide/load/resource/bitmap/try$else;
.end method

.method public abstract if(IIII)F
.end method
