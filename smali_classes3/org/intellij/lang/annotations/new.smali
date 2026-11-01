.class Lorg/intellij/lang/annotations/new;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final case:Ljava/lang/String; = "[^%]|%%"
    .annotation build Lorg/intellij/lang/annotations/if;
        value = "RegExp"
    .end annotation
.end field

.field private static final do:Ljava/lang/String; = "(?:\\d+\\$)?"
    .annotation build Lorg/intellij/lang/annotations/if;
        value = "RegExp"
    .end annotation
.end field

.field public static final else:Ljava/lang/String; = "(?:[^%]|%%|(?:%(?:\\d+\\$)?(?:[-#+ 0,(<]*)?(?:\\d+)?(?:\\.\\d+)?(?:[tT])?(?:[a-zA-Z%])))*"
    .annotation build Lorg/intellij/lang/annotations/if;
        value = "RegExp"
    .end annotation
.end field

.field private static final for:Ljava/lang/String; = "(?:\\d+)?"
    .annotation build Lorg/intellij/lang/annotations/if;
        value = "RegExp"
    .end annotation
.end field

.field private static final if:Ljava/lang/String; = "(?:[-#+ 0,(<]*)?"
    .annotation build Lorg/intellij/lang/annotations/if;
        value = "RegExp"
    .end annotation
.end field

.field private static final new:Ljava/lang/String; = "(?:\\.\\d+)?"
    .annotation build Lorg/intellij/lang/annotations/if;
        value = "RegExp"
    .end annotation
.end field

.field private static final try:Ljava/lang/String; = "(?:[tT])?(?:[a-zA-Z%])"
    .annotation build Lorg/intellij/lang/annotations/if;
        value = "RegExp"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
