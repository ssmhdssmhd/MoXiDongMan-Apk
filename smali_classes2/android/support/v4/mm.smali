.class public Landroid/support/v4/mm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final break:I = 0x9

.field public static final case:I = 0x5

.field public static final catch:I = 0xa

.field public static final class:I = 0xb

.field public static final const:I = 0xc

.field public static final do:I = 0x0

.field public static final else:I = 0x6

.field public static final final:I = 0xd

.field public static final for:I = 0x2

.field public static final goto:I = 0x7

.field public static final if:I = 0x1

.field public static final new:I = 0x3

.field private static super:[Ljava/lang/String; = null

.field public static final this:I = 0x8

.field public static final try:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do(Landroid/content/Context;)[I
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 1
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v1

    const-string v2, "pref_reader_stream_click_left"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/v02;->for(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 2
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v1

    const-string v2, "pref_reader_stream_click_middle"

    const/16 v4, 0xb

    invoke-virtual {v1, v2, v4}, Landroid/support/v4/v02;->for(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, v3

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v1

    const-string v2, "pref_reader_stream_click_right"

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v4}, Landroid/support/v4/v02;->for(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, v4

    .line 4
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v1

    const-string v2, "pref_reader_stream_click_up"

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/v02;->for(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 5
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p0

    const-string v1, "pref_reader_stream_click_down"

    invoke-virtual {p0, v1, v4}, Landroid/support/v4/v02;->for(Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x4

    aput p0, v0, v1

    return-object v0
.end method

.method public static for()[Ljava/lang/String;
    .locals 7

    const-string v0, "pref_reader_stream_click_left"

    const-string v1, "pref_reader_stream_click_top"

    const-string v2, "pref_reader_stream_click_middle"

    const-string v3, "pref_reader_stream_click_bottom"

    const-string v4, "pref_reader_stream_click_right"

    const-string v5, "pref_reader_stream_click_up"

    const-string v6, "pref_reader_stream_click_down"

    .line 1
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static if()[Ljava/lang/String;
    .locals 7

    const-string v0, "pref_reader_page_click_left"

    const-string v1, "pref_reader_page_click_top"

    const-string v2, "pref_reader_page_click_middle"

    const-string v3, "pref_reader_page_click_bottom"

    const-string v4, "pref_reader_page_click_right"

    const-string v5, "pref_reader_page_click_up"

    const-string v6, "pref_reader_page_click_down"

    .line 1
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static new(Landroid/content/Context;)[I
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 1
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v1

    const-string v2, "pref_reader_page_click_top"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/v02;->for(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 2
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v1

    const-string v2, "pref_reader_page_click_middle"

    const/16 v4, 0xb

    invoke-virtual {v1, v2, v4}, Landroid/support/v4/v02;->for(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, v3

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v1

    const-string v2, "pref_reader_page_click_bottom"

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v4}, Landroid/support/v4/v02;->for(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, v4

    .line 4
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v1

    const-string v2, "pref_reader_page_click_up"

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/v02;->for(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 5
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p0

    const-string v1, "pref_reader_page_click_down"

    invoke-virtual {p0, v1, v4}, Landroid/support/v4/v02;->for(Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x4

    aput p0, v0, v1

    return-object v0
.end method
